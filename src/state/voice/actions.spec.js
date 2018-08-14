import _ from 'lodash'
import expect from 'expect'
import ioClient from 'socket.io-client'
import * as actions from './actions'
import { wsConnect, wsDisconnect, wsSubscribe, wsPublish } from '../wsAdapter/'
import { startupMockWsServer, shutdownMockWsServer } from '../wsAdapter/mockWsServer'
import configureMockStore from 'redux-mock-store'
import thunk from 'redux-thunk'
import { sayMsgToAction } from './voiceObserver'
import { defaultState } from './fixtures/'

const middlewares = [thunk]
const mockStore = configureMockStore(middlewares)
const mockWsServerPort = 8001
const mockWsServerUri = `http://localhost:${mockWsServerPort}`

const checkChannel = (topic, expectedMsg) =>
    new Promise((resolve, reject) => {
        const testWsClient = ioClient(mockWsServerUri)
        testWsClient.on(topic, msg => {
            // console.log('Message arrived: ', msg)
            testWsClient.close()
            expect(msg).toEqual(expectedMsg)
            resolve(msg)
        })
    })

describe('voice.actions', () => {
    beforeEach(() => {
        startupMockWsServer(mockWsServerPort)
        wsConnect(mockWsServerUri)
    })

    afterEach(() => {
        wsDisconnect()
        shutdownMockWsServer()
    })

    it('#speak.sayAction', () => {
        const store = mockStore({})
        const payload = "Text to speech"
        const expectedWsMsg = { topic: 'hear', type: 'say', payload: payload }
        const expectedAction = { type: 'SAY_ACTION', payload: payload }

        expect(actions.sayAction(payload)).toEqual(expectedAction)
    })

    it('#hear.listenAction', () => {
        const store = mockStore({})
        const payload = true
        const expectedWsMsg = { topic: 'hear', type: 'listen', payload: payload }
        const expectedAction = { type: 'LISTEN_ACTION', payload: payload }

        expect(actions.listenAction(payload)).toEqual(expectedAction)
    })

    it('#hear.perceiveAction', (done) => {
        const state = defaultState
        const store = mockStore()
        const payload = "Speech to text"

        const expectedWsMsg = { topic: 'hear', type: 'perceive', payload: payload }
        const expectedAction = []

        Promise.all([
            checkChannel('hear', expectedWsMsg),
            store.dispatch(actions.perceiveAction(payload)).then(() => {
                expect(store.getActions()).toEqual(expectedAction)
            })
        ]).then(() => { done() })
    })

})
