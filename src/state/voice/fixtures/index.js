import _ from 'lodash'
import { loadJsonFileSync } from 'datafile'

export const defaultState = loadJsonFileSync(__dirname + '/defaultState.yml')
