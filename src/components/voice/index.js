import { wsConnect, wsSubscribe, wsPublish } from '../../state/wsAdapter/'
import vocabulator from './vocabulator'

const initVoice = () => {
    const synthesizer = vocabulator({
        language: 'en-GB',
        voiceName: 'Google UK English Male',
        pitch: 1
    }).then((synth) => {
        // Subscribe to 'speak' messages
        const speakMsgHandler = msg => {
            const speakStatusTopic = 'speakStatus'
            switch (msg.type) {
                case 'say':
                    console.log(`speakMsgHandler(${JSON.stringify(msg)})`)
                    synth.say({ text: msg.payload, /* language, voiceName, pitch, ... */  }, (err) => {
                        if (err == null) {
                            const sayCompletedMsg = {
                                topic: speakStatusTopic,
                                type: 'sayCompleted',
                                timestamp: Date.now(),
                                payload: null
                            }
                            console.log(sayCompletedMsg)
                            wsPublish(speakStatusTopic, sayCompletedMsg)
                        } else {
                            const sayErrorMsg = {
                                topic: speakStatusTopic,
                                type: 'sayError',
                                timestamp: Date.now(),
                                payload: err
                            }
                            console.log(sayErrorMsg)
                            wsPublish(speakStatusTopic, sayErrorMsg)
                        }
                    })
                    break

                default:
                    break
            }
        }
        wsSubscribe('speak', speakMsgHandler)
    });

}


module.exports = {
    initVoice
}
