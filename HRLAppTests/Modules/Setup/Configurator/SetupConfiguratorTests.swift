//
//  SetupSetupConfiguratorTests.swift
//  HRLApp
//
//  Created by Enrique de la Torre on 15/02/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import XCTest

@testable import HRLApp

// MARK: - Main body

final class SetupModuleConfiguratorTests: XCTestCase {

    // MARK: - Properties

    let coreDataStore = CoreDataConfigurableTestDouble()
    let healthStoreFactory = HealthStoreFactoryTestDouble()
    let viewController = SetupViewController()

    var sut = SetupModuleConfigurator()

    // MARK: - Tests

    func test_configureDependenciesForViewController_setAllDependencies() {
        // when
        sut.configureDependencies(for: viewController,
                                  withCoreDataStore: coreDataStore,
                                  healthStoreFactory: healthStoreFactory)

        // then
        XCTAssertNotNil(viewController.output)

        let presenter = viewController.output as! SetupPresenter
        XCTAssertNotNil(presenter.view)
        XCTAssertNotNil(presenter.router)
        XCTAssertNotNil(presenter.interactor)

        let interactor = presenter.interactor as! SetupInteractor
        XCTAssertNotNil(interactor.coreDataStore)
        XCTAssertNotNil(interactor.healthStoreFactory)
        XCTAssertTrue(interactor.output === presenter)
    }
}
