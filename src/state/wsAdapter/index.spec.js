import ioClient from 'socket.io-client'
import { wsConnect, wsDisconnect, wsPublish, wsSubscribe } from './index'
import { startupMockWsServer, shutdownMockWsServer } from './mockWsServer'

const mockWsServerPort = 8001
const mockWsServerUri = `http://localhost:${mockWsServerPort}`

describe('wsAdapter', () => {
    beforeEach(() => {
        startupMockWsServer(mockWsServerPort)
    })

    afterEach(done => {
        shutdownMockWsServer(done)
    })

    it('#publish message to topic', done => {
        const testTopic = 'TPA'
        const testMessage = { topic: testTopic, data: 'some data...' }
        const testWsClient = ioClient(mockWsServerUri)

        // Prepare to check if the message is really arrived
        testWsClient.on(testTopic, msg => {
            // console.log('Message arrived: ', msg)
            testWsClient.close()
            wsDisconnect()
            done()
        })

        // Connect to WS and send the test message to the TPA topic
        wsConnect(mockWsServerUri)
        wsPublish(testTopic, testMessage)
    })

    it('#subscribe to topic and receive message', done => {
        const testTopic = 'TMA'
        const testMessage = { topic: testTopic, data: 'some data...' }
        const testWsClient = ioClient(mockWsServerUri)

        // Connect to WS and send the test message to the TMA topic
        wsConnect(mockWsServerUri)

        // Prepare to check if the message is really arrived
        wsSubscribe(testTopic, msg => {
            // console.log('Message arrived: ', msg)
            testWsClient.close()
            wsDisconnect()
            done()
        })

        testWsClient.emit('message', testMessage)
    })
})
