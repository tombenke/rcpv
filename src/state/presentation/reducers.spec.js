import _ from 'lodash'
import expect from 'expect'
import { showAction } from './actions'
import { presentation } from './reducers'
import { defaultState, showState_Localhost } from './fixtures/'

describe('presentation.reducers', () => {
    const defaultStore = defaultState

    it('initial state', () => {
        const initialState = presentation(undefined, {})
        expect(initialState).toEqual(defaultState.presentation)
    })

    it('showAction', () => {
        const payload = showState_Localhost.presentation.show
        const expectedState = showState_Localhost.presentation
        const result = presentation(presentation(undefined, {}), showAction(payload))
        expect(result).toEqual(expectedState)
    })

})
