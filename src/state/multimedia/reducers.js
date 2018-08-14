import { handleActions } from 'redux-actions'
import { playAction, playDoneAction, showAction } from './actions'

const defaultState = {
    play: null,
    show: null
}

const reducers = {
    [playAction]: (state, action) => ({ ...state, play: action.payload }),
    [showAction]: (state, action) => ({ ...state, show: action.payload }),
    [playDoneAction]: (state, action) => ({ ...state, play: null })
}

export const multimedia = handleActions(reducers, defaultState)
