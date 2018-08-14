import { createActions } from 'redux-actions'
import { wsConnect, wsDisconnect, wsSubscribe, wsPublish } from '../wsAdapter/'
import _ from 'lodash'

// NOTE: wsAdapter must be initialized via calling the wsConnect function!

export const perceiveAction = (text) => {
    return (dispatch, getState) => {
        const state = getState()

        wsPublish('hear', {
            type: 'perceive',
            payload: text
        })
        return Promise.resolve()
    }
}

export const {
    listenAction,
    sayAction,
    sayDoneAction
} = createActions({
    LISTEN_ACTION: enable => enable,
    SAY_ACTION: text => text,
    SAY_DONE_ACTION: null
})
