import { listenAction, sayAction } from './actions'

export const speakMsgToAction = store => msg => {
    switch (msg.type) {
        case 'say':
            console.log(`dispatch(sayAction(${JSON.stringify(msg.payload)}))`)
            store.dispatch(sayAction(msg.payload))
            break

        default:
            break
    }
}

export const hearMsgToAction = store => msg => {
    switch (msg.type) {
        case 'listen':
            console.log(`dispatch(listenAction(${JSON.stringify(msg.payload)}))`)
            store.dispatch(listenAction(msg.payload))
            break

        default:
            break
    }
}
