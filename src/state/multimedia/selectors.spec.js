import expect from 'expect'
import { defaultState } from './fixtures/'
import { playSelector, showSelector } from './selectors'

describe('multimedia.selectors', () => {
    it('play', () => {
        expect(playSelector(defaultState)).toEqual(defaultState.multimedia.play)
    })

    it('show', () => {
        expect(showSelector(defaultState)).toEqual(defaultState.multimedia.show)
    })
})
