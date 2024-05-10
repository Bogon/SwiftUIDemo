//
//  Item.swift
//  SwiftUIDemo
//
//  Created by 繁华奢品 on 2024/4/26.
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
