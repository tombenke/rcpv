import { timer } from './reducers'
import { setCurrentTime } from './actions'
import { currentTimeSelector } from './selectors'

const startTimer = store => {
    store.dispatch(setCurrentTime(Date.now()))
    setInterval(() => {
        const currentTime = Date.now()
        store.dispatch(setCurrentTime(currentTime))
    }, 1000)
}

export {
    // reducer
    timer,
    // action
    setCurrentTime,
    // selectors
    currentTimeSelector,
    // other
    startTimer
}
