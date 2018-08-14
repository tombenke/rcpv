import { handleActions } from 'redux-actions'
import { playAction, playDoneAction } from './actions'

const defaultState = {
    play: null
}

const reducers = {
    [playAction]: (state, action) => ({ ...state, play: action.payload }),
    [playDoneAction]: (state, action) => ({ ...state, play: null })
}

export const multimedia = handleActions(reducers, defaultState)
