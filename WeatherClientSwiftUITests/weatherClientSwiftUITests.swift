//
//  weatherClientSwiftUITests.swift
//  weatherClientSwiftUITests
//
//  Created by Maxim on 05/08/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

import XCTest

class WeatherClientSwiftUITests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
