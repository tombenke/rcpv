import expect from 'expect'
import { defaultState } from './fixtures/'
import { saySelector, isMicrophoneEnabledSelector } from './selectors'

describe('voice.selectors', () => {
    it('say', () => {
        expect(saySelector(defaultState)).toEqual(defaultState.voice.say)
    })

    it('hear - isMicrophoneEnabled', () => {
        expect(isMicrophoneEnabledSelector(defaultState)).toEqual(false)
    })
})
