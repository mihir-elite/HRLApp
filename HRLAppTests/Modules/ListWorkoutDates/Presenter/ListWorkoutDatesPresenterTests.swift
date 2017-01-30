//
//  ListWorkoutDatesListWorkoutDatesPresenterTests.swift
//  HRLApp
//
//  Created by Enrique de la Torre on 30/01/2017.
//  Copyright © 2017 Enrique de la Torre. All rights reserved.
//

import XCTest

@testable import HRLApp

class ListWorkoutDatesPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: ListWorkoutDatesInteractorInput {

    }

    class MockRouter: ListWorkoutDatesRouterInput {

    }

    class MockViewController: ListWorkoutDatesViewInput {

        func setupInitialState() {

        }
    }
}
