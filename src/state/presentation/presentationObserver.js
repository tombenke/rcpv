import { showAction } from './actions'

export const presentationMsgToAction = store => msg => {
    switch (msg.type) {
        case 'show':
            console.log(`dispatch(showAction(${JSON.stringify(msg.payload)}))`)
            store.dispatch(showAction(msg.payload))
            break

        default:
            break
    }
}
