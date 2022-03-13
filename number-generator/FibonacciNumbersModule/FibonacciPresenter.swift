//
//  FibonacciPresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class FibonacciPresenter: BaseTablePresenter {
    private let interactor: FibonacciInteractor
    
    init(interactor: FibonacciInteractor) {
        self.interactor = interactor
        super.init()
        self.numbers = interactor.fibonacci.numbers
    }
    
    override func addNewValue() {
        interactor.addNewValue()
        self.numbers = interactor.fibonacci.numbers
    }
}
