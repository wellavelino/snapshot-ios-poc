//
//  BeachViewSnapshotTesting.swift
//  SnapshotPOCTests
//
//  Created by Wellington Avelino Dos Santos on 05/02/2020.
//  Copyright © 2020 Wellington Avelino Dos Santos. All rights reserved.
//

import FBSnapshotTestCase
@testable import SnapshotPOC

class BeachViewSnapshotTesting: FBSnapshotTestCase {

    let origin = CGPoint(x: 0, y: 0)

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsShowingCorrectlyOn6Devices() {
          makeSnapshot(for: CGRect(origin: origin, size: Device.iPhone6.size()))
      }

      func testIsShowingCorrectlyOn6Devices_WithDifferentName() {
          let frame = CGRect(origin: origin, size: Device.iPhone6.size())
          let testData = Beach.testDataFromBundle(name: "Well")
          makeSnapshot(for: frame, with: testData)
      }

      private func makeSnapshot(for frame: CGRect, with testData: Beach = Beach.testDataFromBundle()) {
          let containerView = UIView()
          containerView.frame = frame
          let view = BeachView()
          containerView.addSubview(view)
          containerView.backgroundColor = .white

          view.translatesAutoresizingMaskIntoConstraints = false
          view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 50).isActive = true
          view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50).isActive = true
          view.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
          view.update(with: testData)
          verify(view: containerView)
      }

}
