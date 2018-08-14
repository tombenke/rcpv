import expect from 'expect'
import { makeQuery } from './makeQuery'

//import * as _ from 'lodash'
//import { mergeJsonFilesSync } from 'datafile'

describe('restCall.makeQuery', () => {
    const queryParams = {
        language: 'EN',
        category: 'general',
        numQuestions: 3
    }

    it('with empty params object', () => {
        expect(makeQuery({})).toEqual('')
    })

    it('with null params values', () => {
        expect(makeQuery({})).toEqual('')
    })

    it('with full params', () => {
        expect(makeQuery(queryParams)).toEqual('?language=EN&category=general&numQuestions=3')
    })
})
