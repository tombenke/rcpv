import { setCurrentTime } from './actions'
import { timer } from './reducers'
import expect from 'expect'

describe('timer.reducers', () => {
    it('should return the initial state', () => {
        expect(timer(undefined, {})).toEqual(0)
        //expect(timer(undefined, {})).toBeA('object').toIncludeKey('timer')
    })

    it('should handle SET_CURRENT_TIME', () => {
        const timeToSet = Date.now() // new Date().getTime()

        const expectedResult = {
            timer: timeToSet
        }

        expect(timer(timer(undefined, {}), setCurrentTime(timeToSet))).toEqual(timeToSet)
        //expect(timer(timer(undefined, {}), setCurrentTime(timeToSet))).toBeA('object').toIncludeKey('timer')
    })
})
