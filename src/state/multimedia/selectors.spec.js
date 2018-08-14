import expect from 'expect'
import { defaultState } from './fixtures/'
import { playSelector } from './selectors'

describe('multimedia.selectors', () => {
    it('play', () => {
        expect(playSelector(defaultState)).toEqual(defaultState.multimedia.play)
    })
})
