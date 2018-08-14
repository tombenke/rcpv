import { handleActions } from 'redux-actions'
import { showAction } from './actions'

const defaultState = {
    show: null,
    showCount: 0
}

const reducers = {
    [showAction]: (state, action) => ({ ...state, show: action.payload, showCount: state.showCount + 1 })
}

export const presentation = handleActions(reducers, defaultState)
