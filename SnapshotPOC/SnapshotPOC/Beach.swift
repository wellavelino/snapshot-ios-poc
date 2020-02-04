//
//  Beach.swift
//  SnapshotPOC
//
//  Created by Wellington Avelino Dos Santos on 04/02/2020.
//  Copyright © 2020 Wellington Avelino Dos Santos. All rights reserved.
//

import Foundation

public struct Beach {
    public let name: String
    public let details: String
    public let imageURL: URL

    public init(name: String, details: String, imageURL: URL) {
        self.name = name
        self.details = details
        self.imageURL = imageURL
    }
}
