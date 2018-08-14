import expect from 'expect'
import { defaultState } from './fixtures/'
import { showSelector } from './selectors'

describe('presentation.selectors', () => {
    it('show', () => {
        expect(showSelector(defaultState)).toEqual(defaultState.presentation.show)
    })
})
