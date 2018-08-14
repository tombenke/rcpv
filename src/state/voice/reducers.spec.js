import _ from 'lodash'
import expect from 'expect'
import { listenAction, sayAction, sayDoneAction } from './actions'
import { voice } from './reducers'
import { defaultState } from './fixtures/'

describe('voice.reducers', () => {
    const defaultStore = defaultState

    it('initial state', () => {
        const initialState = voice(undefined, {})
        expect(initialState).toEqual(defaultState.voice)
    })

    it('sayAction', () => {
        const payload = "Text to speech"
        const expectedState = { say: payload }
        const result = voice(voice(undefined, {}), sayAction(payload))
        expect(result.voice).toEqual(expectedState.voice)
    })

    it('listenAction', () => {
        const payload = true
        const expectedState = { hear: { listen: payload } }
        const result = voice(voice(undefined, {}), listenAction(payload))
        console.log(result, expectedState)
        expect(result.hear).toEqual(expectedState.hear)
    })

    it('sayDoneAction', () => {
        const payload = "Text to speech"
        const expectedState = defaultState.voice
        const result = voice(voice(voice(undefined, {}), sayAction(payload)), sayDoneAction())
        expect(result).toEqual(expectedState)
    })
})
