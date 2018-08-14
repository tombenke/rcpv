import _ from 'lodash'
import ioClient from 'socket.io-client'

const runInBrowser = () => !(typeof window === 'undefined')
const getOriginHost = () => (runInBrowser() ? window.location.origin : 'http://localhost')
const getOrigin = () => getOriginHost()

let wsClient = null
export const wsConnect = (uri = null) => (wsClient = ioClient(uri ? uri : getOrigin()))
export const wsDisconnect = () => wsClient.close()
export const wsPublish = (topic, message) => wsClient.emit('message', _.merge({}, message, { topic: topic }))
export const wsSubscribe = (topic, cb) => wsClient.on(topic, cb)
