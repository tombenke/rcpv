import { createStore, applyMiddleware, combineReducers } from 'redux'
import { composeWithDevTools } from 'redux-devtools-extension'
import thunkMiddleware from 'redux-thunk'

import { presentation, presentationMsgToAction } from './presentation'
import { multimedia, multimediaMsgToAction } from './multimedia'
import { voice, hearMsgToAction, speakMsgToAction } from './voice'
import { timer, setCurrentTime/*, startTimer*/ } from './timer'
import { wsConnect, wsSubscribe } from './wsAdapter/'

export default function configureStore(initialState) {
    const rootReducer = combineReducers({
        presentation,
        multimedia,
        voice,
        timer
    })
    const middlewares = [thunkMiddleware]

    if (process.env.NODE_ENV === 'development') {
        const { createLogger } = require('redux-logger')

        const logger = createLogger({
            collapsed: true,
            predicate: (getState, action) => action.type !== setCurrentTime().type
        })

        middlewares.push(logger)
    }

    const store = createStore(rootReducer, initialState, composeWithDevTools(applyMiddleware(...middlewares)))
    //startTimer(store)
    wsConnect()
    wsSubscribe('presentation', presentationMsgToAction(store))
    wsSubscribe('multimedia', multimediaMsgToAction(store))
    wsSubscribe('speak', speakMsgToAction(store))
    wsSubscribe('hear', hearMsgToAction(store))

    return store
}
