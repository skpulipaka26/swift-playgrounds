//
//  CounterReducer.swift
//  ReactiveSwift
//
//  Created by Pulipaka Sai Krishna on 10/13/18.
//  Copyright © 2018 Pulipaka Sai Krishna. All rights reserved.
//

import ReSwift

// the reducer is responsible for evolving the application state based
// on the actions it receives
func counterReducer(action: Action, state: AppState?) -> AppState {
    // if no state has been provided, create the default state
    var state = state ?? AppState()
    state.counter = getNextNumber(currNumber: state.counter, action: action)
    return state
}

func getNextNumber(currNumber: Int, action: Action) -> Int {
    var nextNumber = currNumber
    switch action {
    case _ as CounterActionIncrease:
        nextNumber += 1
    case _ as CounterActionDecrease:
        nextNumber = currNumber > 0 ? currNumber - 1 : 0
    default:
        break
    }
    return nextNumber
}

