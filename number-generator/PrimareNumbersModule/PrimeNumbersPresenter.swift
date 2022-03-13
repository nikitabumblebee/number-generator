//
//  PrimeNumbersPresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

/// Provides presenter layer in VIPER architecture for Prime Numbers table
class PrimeNumbersPresenter: BaseTablePresenter {    
    private let interactor: PrimeNumbersInteractor
    
    /**
     Initializes an instance of PrimeNumbersPresenter
     - Parameters:
     - interactor: present a layer for interaction with entity via methods
     
     - Returns: Instance of `PrimeNumbersPresenter`
     */
    init(interactor: PrimeNumbersInteractor) {
        self.interactor = interactor
        super.init()
        self.numbers = interactor.primesNumbersEntity.numbers
    }
    
    /**
     Add new number value to collection
     
     Calling this method will add new value to prime numbers collection
     and update `numbers` for presenter layer
     */
    override func addNewValue() {
        interactor.addNewValue()
        self.numbers = interactor.primesNumbersEntity.numbers
    }
}
