import _ from 'lodash'
import { handleActions } from 'redux-actions'
import { listenAction, sayAction, sayDoneAction } from './actions'

const defaultState = {
    say: null,
    hear: {
        listen: false
    }
}

const reducers = {
    [listenAction]: (state, action) => _.merge({}, state, { hear: { listen: action.payload } }),
    [sayAction]: (state, action) => ({ ...state, say: action.payload }),
    [sayDoneAction]: (state, action) => ({ ...state, say: null })
}

export const voice = handleActions(reducers, defaultState)
