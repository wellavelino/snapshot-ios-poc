//
//  Device.swift
//  SnapshotPOCTests
//
//  Created by Wellington Avelino Dos Santos on 05/02/2020.
//  Copyright © 2020 Wellington Avelino Dos Santos. All rights reserved.
//

import Foundation
import UIKit

enum Device: String {
    case iPhone6
    case iPhone11

    func size() -> CGSize {
        switch self {
        case .iPhone6:
            return CGSize(width: 375, height: 667)
        case .iPhone11:
            return CGSize(width: 400, height: 800)
        }
    }
}
