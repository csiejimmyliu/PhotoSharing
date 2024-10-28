//
//  Item.swift
//  PhotoSharing
//
//  Created by Jimmy Liu on 2024/10/28.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
