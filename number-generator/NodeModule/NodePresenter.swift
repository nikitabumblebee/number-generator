//
//  NodePresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class NodePresenter: ObservableObject {
    @Published var numberValue: Int
    
    init(numberValue: Int) {
        self.numberValue = numberValue
    }
}
