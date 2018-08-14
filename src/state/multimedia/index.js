import { multimedia } from './reducers'
import { playAction, playDoneAction, showAction } from './actions'
import { playSelector, showSelector } from './selectors'
import { multimediaMsgToAction } from './multimediaObserver'
export {
    // reducer
    multimedia,

    // action
    playAction,
    playDoneAction,
    showAction,

    // selectors
    playSelector,
    showSelector,

    multimediaMsgToAction
}
