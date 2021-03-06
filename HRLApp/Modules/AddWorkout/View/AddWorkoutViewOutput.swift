//
//  AddWorkoutAddWorkoutViewOutput.swift
//  HRLApp
//
//  Created by Enrique de la Torre on 18/01/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import Foundation

protocol AddWorkoutViewOutput {
    func viewIsReady()

    func addWorkout(at index: Int, startingOn date: Date)
}
