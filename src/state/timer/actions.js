import { createActions } from 'redux-actions'

export const { setCurrentTime } = createActions({
    SET_CURRENT_TIME: time => time
})
