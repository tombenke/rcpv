import { createActions } from 'redux-actions'
import { wsConnect, wsDisconnect, wsSubscribe, wsPublish } from '../wsAdapter/'
import _ from 'lodash'

// NOTE: wsAdapter must be initialized via calling the wsConnect function!

export const {
    showAction
} = createActions({
    SHOW_ACTION: content => content
})
