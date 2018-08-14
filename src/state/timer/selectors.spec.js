import expect from 'expect'
import { mergeJsonFilesSync } from 'datafile'
import { currentTimeSelector } from './selectors'

describe('timer.selectors', () => {
    it('currentTime', () => {
        const state = mergeJsonFilesSync([__dirname + '/fixtures.yml'])
        expect(currentTimeSelector(state)).toEqual(state.timer)
    })
})
