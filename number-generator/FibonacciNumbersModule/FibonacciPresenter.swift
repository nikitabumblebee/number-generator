//
//  FibonacciPresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/**
 Provides presenter layer of VIPER architecture of Fibonacci module
 
 Inherited from `BaseTablePresenter` abstract class
 */
class FibonacciPresenter: BaseTablePresenter {
    private let interactor: FibonacciInteractor
    
    /**
     Initializes an instance of `FibonacciPresenter`
     
     - Parameters:
        - Interactor: instance of interactovity layer of VIPER architecture for Fibonacci module
     
     - Returns: Instance of `FibonacciPresenter`
     */
    init(interactor: FibonacciInteractor) {
        self.interactor = interactor
        super.init()
        self.numbers = interactor.fibonacciEntity.numbers
    }
    
    /**
     Add new value to Fibonacci sequence
     
     Calling this method adds new value to the end of Fibonacci sequence
     and update `numbers` collection of presenter
     */
    override func addNewValue() {
        interactor.addNewValue()
        self.numbers = interactor.fibonacciEntity.numbers
    }
}
