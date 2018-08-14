import { playAction } from './actions'

export const multimediaMsgToAction = store => msg => {
    switch (msg.type) {
        case 'play':
            console.log(`dispatch(playAction(${JSON.stringify(msg.payload)}))`)
            store.dispatch(playAction(msg.payload))
            break

        default:
            break
    }
}
