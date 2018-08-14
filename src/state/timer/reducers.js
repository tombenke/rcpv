import { handleActions } from 'redux-actions'
import { setCurrentTime } from './actions'

const defaultState = 0

const reducers = {
    [setCurrentTime]: (state, action) => {
        return action.payload
    }
}

export const timer = handleActions(reducers, defaultState)
