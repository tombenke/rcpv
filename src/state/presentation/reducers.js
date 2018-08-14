import { handleActions } from 'redux-actions'
import { showAction } from './actions'

const defaultState = {
    show: null
}

const reducers = {
    [showAction]: (state, action) => ({ ...state, show: action.payload })
}

export const presentation = handleActions(reducers, defaultState)
