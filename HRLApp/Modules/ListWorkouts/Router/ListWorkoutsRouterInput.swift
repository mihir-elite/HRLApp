//
//  ListWorkoutsListWorkoutsRouterInput.swift
//  HRLApp
//
//  Created by Enrique de la Torre on 16/01/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import Foundation

protocol ListWorkoutsRouterInput: class {
    func presentAddWorkout()
    func presentDateList(forWorkoutAt index: Int)
}
