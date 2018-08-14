import expect from 'expect'
import configureStore from './store'
import { startupMockWsServer, shutdownMockWsServer } from './wsAdapter/mockWsServer'
import { wsDisconnect } from './wsAdapter/'

const mockWsServerPort = 8001

describe('store', () => {
    beforeEach(() => {
        startupMockWsServer(mockWsServerPort)
    })

    afterEach(done => {
        wsDisconnect()
        shutdownMockWsServer(done)
    })

    it('getStore()', () => {
        const initialState = configureStore().getState()
        expect(initialState).toIncludeKeys(['presentation', 'multimedia', 'timer', 'voice'])
    })
})
