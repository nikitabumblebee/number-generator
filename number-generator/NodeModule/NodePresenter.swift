//
//  NodePresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class NodePresenter: ObservableObject {
    @Published var numberValue: String
    
    init(numberValue: String) {
        self.numberValue = numberValue
    }
}
