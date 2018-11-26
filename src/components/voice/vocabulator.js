import { isBrowser/*, isNode*/ } from 'browser-or-node'

let init = null

if (isBrowser) {

    console.log('Runs in browser')
    const synthesizer = speechSynthesis
    let voices = []

    const awaitVoices = new Promise(resolve => speechSynthesis.onvoiceschanged = resolve)

    init = config => {
        console.log(`init(${JSON.stringify(config)}) is called`)
        return awaitVoices.then(() => {
            voices = synthesizer.getVoices()
            console.log('voices:', voices)

            const say = (message, cb) => {
                const utterance = new SpeechSynthesisUtterance(message.text)
                utterance.onend = () => { cb(null) }
                utterance.onerror = (err) => { cb(err) }

                const language = message.language || config.language
                const voiceName = message.voiceName || config.voiceName

                utterance.voice = voices.find(voice => voice.lang === language && voice.name === voiceName)
                utterance.pitch = message.pitch || config.pitch || 1
                utterance.rate = message.rate || config.rate || 1

                console.log(`speak(${JSON.stringify(utterance)})`, utterance)
                synthesizer.speak(utterance)
            }

            const pause = () => {
                synthesizer.pause()
            }

            const resume = () => {
                synthesizer.resume()
            }

            const cancel = () => {
                synthesizer.cancel()
            }
            
            return {
                say,
                cancel,
                pause,
                resume,
            }
        })
    }
} else {
    init = config => {
        return {
            say: (tts) => { console.log(`synthesizer.say "${tts}" is called`) },
            cancel: () => { console.log('synthesizer.cancel is called') },
            pause: () => { console.log('synthesizer.pause is called') },
            resume: () => { console.log('synthesizer.resume is called') },
        }
    }
}

export default init
