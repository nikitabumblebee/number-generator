//
//  NodeEntity.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class NodeEntity: Identifiable {
    var numberValue: Int
    
    init(numberValue: Int) {
        self.numberValue = numberValue
    }
}
