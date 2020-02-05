//
//  SnapShotPOCTestCase.swift
//  SnapshotPOCTests
//
//  Created by Wellington Avelino Dos Santos on 05/02/2020.
//  Copyright © 2020 Wellington Avelino Dos Santos. All rights reserved.
//

import FBSnapshotTestCase
@testable import SnapshotPOC

class SnapShotPOCTestCase: FBSnapshotTestCase {

    let origin = CGPoint(x: 0, y: 0)
    override func setUp() {
        super.setUp()
        recordMode = false
    }

    override func tearDown() {

    }

     func testBlurEffectOnController() {
          let controller = ViewController()
          controller.view.frame = CGRect(origin: origin, size: Device.iPhone6.size())

        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)

          let blurView = UIVisualEffectView(effect: blurEffect)
          blurView.frame = controller.view.frame
          controller.view.addSubview(blurView)
          verify(view: controller.view)
      }

    private func verify(view: UIView) {
          // set tolerance to x if you don't care about x% difference in snapshots
         // FBSnapshotVerifyView(view, identifier: "teaser", tolerance: 2)
          FBSnapshotVerifyView(view, identifier: "teaser")
      }
}
