import _ from 'lodash'
import { loadJsonFileSync } from 'datafile'

export const defaultState = loadJsonFileSync(__dirname + '/defaultState.yml')
export const showState_Localhost = _.merge({}, defaultState, { presentation: { show: "http://localhost:3007", showCount: 1 } })
