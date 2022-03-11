//
//  NodePresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class NodePresenter: ObservableObject {
    @Published var numberValue: Int
    @Published var isLast: Bool
    
    init(numberValue: Int, isLast: Bool) {
        self.numberValue = numberValue
        self.isLast = isLast
    }
}
