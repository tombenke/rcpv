import React from 'react'
import ReactDOM from 'react-dom'
import {HashRouter, Route, Switch} from 'react-router-dom'
import { Provider } from 'react-redux'
import initStore from './state/store'

import Presentation from './components/Presentation'
const store = initStore()

ReactDOM.render((
    <Provider store={ store }>
    <Presentation />
    </Provider>
), document.getElementById('root'))
