//
//  SnapShotTest.swift
//  SnapshotPOCTests
//
//  Created by Wellington Avelino Dos Santos on 05/02/2020.
//  Copyright © 2020 Wellington Avelino Dos Santos. All rights reserved.
//

import FBSnapshotTestCase
@testable import SnapshotPOC

class SnapShotTest: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        recordMode = true
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
