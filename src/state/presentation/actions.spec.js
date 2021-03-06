import _ from 'lodash'
import expect from 'expect'
import ioClient from 'socket.io-client'
import * as actions from './actions'
import { wsConnect, wsDisconnect, wsSubscribe, wsPublish } from '../wsAdapter/'
import { startupMockWsServer, shutdownMockWsServer } from '../wsAdapter/mockWsServer'
import configureMockStore from 'redux-mock-store'
import thunk from 'redux-thunk'
//import { presentationMsgToAction } from './presentationObserver'

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

describe('multimedia.actions', () => {
    beforeEach(() => {
        startupMockWsServer(mockWsServerPort)
        wsConnect(mockWsServerUri)
    })

    afterEach(() => {
        wsDisconnect()
        shutdownMockWsServer()
    })

    it('#showAction', () => {
        const store = mockStore({})
        const expectedWsMsg = { topic: 'multimedia', type: 'show' }
        const expectedAction = { type: 'SHOW_ACTION', payload: {} }

        expect(actions.showAction({})).toEqual(expectedAction)
    })
})
