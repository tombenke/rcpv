import * as actions from './actions'
import expect from 'expect'

describe('timer.actions', () => {
    it('should create an action to set current time', () => {
        const payload = 42
        const expectedAction = {
            type: 'SET_CURRENT_TIME',
            payload: payload
        }
        expect(actions.setCurrentTime(42)).toEqual(expectedAction)
    })
})
