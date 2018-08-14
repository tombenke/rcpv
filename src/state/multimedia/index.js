import { multimedia } from './reducers'
import { playAction, playDoneAction } from './actions'
import { playSelector } from './selectors'
import { multimediaMsgToAction } from './multimediaObserver'
export {
    // reducer
    multimedia,

    // action
    playAction,
    playDoneAction,

    // selectors
    playSelector,

    multimediaMsgToAction
}
