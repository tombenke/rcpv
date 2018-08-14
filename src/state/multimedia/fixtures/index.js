import _ from 'lodash'
import { loadJsonFileSync } from 'datafile'

export const defaultState = loadJsonFileSync(__dirname + '/defaultState.yml')
export const audio_Vader = loadJsonFileSync(__dirname + '/audio_Vader.yml')
export const audioState_Vader = _.merge({}, defaultState, { multimedia: { play: audio_Vader } })
