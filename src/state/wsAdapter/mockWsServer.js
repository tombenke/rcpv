import http from 'http'
import SocketIo from 'socket.io'

let wsServer = null

export const startupMockWsServer = (port = 8001) => {
    const httpServer = http.createServer()
    wsServer = SocketIo(httpServer)
    wsServer.on('connection', socket => {
        // console.log('Server CONNECTION')

        socket.on('message', data => {
            // console.log('on message: ', data, 'will forward to :', data.topic)
            socket.broadcast.emit(data.topic, data)
        })
    })

    wsServer.on('error', err => {
        console.log('Server ERROR:', err)
    })

    wsServer.on('disconnection', reason => {
        // console.log('Server DISCONNECTION:', reason)
    })

    httpServer.listen(port)
}

export const shutdownMockWsServer = cb => wsServer.close(cb)
