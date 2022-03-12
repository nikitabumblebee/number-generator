//
//  BaseTablePresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class BaseTablePresenter: ObservableObject {
    @Published var numbers: [Int]
    
    init() {
        self.numbers = []
    }
    
    func addNewValue() { }
}

