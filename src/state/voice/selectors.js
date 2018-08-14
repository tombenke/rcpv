import { createSelector } from 'reselect'

export const saySelector = state => state.voice.say
export const isMicrophoneEnabledSelector = state => state.voice.hear.listen
