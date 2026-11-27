//
//  Item.swift
//  Study_Circle
//
//  Created by Mayuri Kale on 24/11/26.
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
