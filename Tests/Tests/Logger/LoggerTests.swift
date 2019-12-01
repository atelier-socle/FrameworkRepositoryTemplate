//
//  MyFrameworkTests.swift
//  MyFrameworkTests
//
//  Created by Tom Baranes on 15/11/2019.
//

import XCTest
@testable import MyFramework

final class LoggerTests: XCTestCase {

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
        log.removeAllDestinations()
    }

    override func tearDown() {
        super.tearDown()
        log.removeAllDestinations()
    }

}

// MARK: - Tests

extension LoggerTests {

    func testEnableLog() {
        Logger().enable()
        XCTAssertEqual(log.destinations.count, 1)
    }

    func testDisableLog() {
        XCTAssertEqual(log.destinations.count, 0)
        Logger().enable()
        Logger().disable()
        XCTAssertEqual(log.destinations.count, 0)
    }

}
