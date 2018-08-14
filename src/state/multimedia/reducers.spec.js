import _ from 'lodash'
import expect from 'expect'
import { playAction, playDoneAction } from './actions'
import { multimedia } from './reducers'
import { defaultState, audio_Vader, audioState_Vader } from './fixtures/'

describe('multimedia.reducers', () => {
    const defaultStore = defaultState

    it('initial state', () => {
        const initialState = multimedia(undefined, {})
        expect(initialState).toEqual(defaultState.multimedia)
    })

    it('playAction', () => {
        const payload = audio_Vader
        const expectedState = audioState_Vader.multimedia
        const result = multimedia(multimedia(undefined, {}), playAction(payload))
        expect(result).toEqual(expectedState)
    })

    it('playDoneAction', () => {
        const expectedState = defaultState.multimedia
        const result = multimedia(audioState_Vader.multimedia, playDoneAction())
        expect(result).toEqual(expectedState)
    })

})
