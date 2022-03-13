//
//  BaseTablePresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class BaseTablePresenter: ObservableObject {
    @Published var numbers: [String] = []
    
    func addNewValue() {
        preconditionFailure("This method must be overridden")
    }
}
