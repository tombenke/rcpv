import { createActions } from 'redux-actions'
import { wsConnect, wsDisconnect, wsSubscribe, wsPublish } from '../wsAdapter/'
import _ from 'lodash'

// NOTE: wsAdapter must be initialized via calling the wsConnect function!

export const {
    playAction,
    playDoneAction
} = createActions({
    PLAY_ACTION: content => content,
    PLAY_DONE_ACTION: null
})
