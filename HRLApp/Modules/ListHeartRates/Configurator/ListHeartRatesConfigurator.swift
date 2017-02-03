//
//  ListHeartRatesListHeartRatesConfigurator.swift
//  HRLApp
//
//  Created by Enrique de la Torre on 03/02/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import UIKit

// MARK: - Main body

class ListHeartRatesModuleConfigurator {

    // MARK: - Public methods

    func configureDependencies(for viewInput: UIViewController) {
        guard let viewController = viewInput as? ListHeartRatesViewController else {
            return
        }

        configureDependencies(for: viewController)
    }

    func configureModule(for viewInput: UIViewController,
                         withWorkoutAt workoutIndex: Int,
                         dateAt dateIndex: Int) {
        guard let viewController = viewInput as? ListHeartRatesViewController else {
            return
        }

        configureModule(for: viewController, withWorkoutAt: workoutIndex, dateAt: dateIndex)
    }
}

// MARK: - Private body

private extension ListHeartRatesModuleConfigurator {

    // MARK: - Private methods

    func configureDependencies(for viewController: ListHeartRatesViewController) {
        let router = ListHeartRatesRouter()

        let presenter = ListHeartRatesPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ListHeartRatesInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

    func configureModule(for viewController: ListHeartRatesViewController,
                         withWorkoutAt workoutIndex: Int,
                         dateAt dateIndex: Int) {
        guard let input = viewController.output as? ListHeartRatesModuleInput else {
            return
        }

        input.configure(withWorkoutAt: workoutIndex, dateAt: dateIndex)
    }
}