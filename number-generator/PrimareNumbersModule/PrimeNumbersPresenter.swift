//
//  PrimeNumbersPresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class PrimeNumbersPresenter: BaseTablePresenter {    
    private let interactor: PrimeNumbersInteractor
    
    init(interactor: PrimeNumbersInteractor) {
        self.interactor = interactor
        super.init()
        self.numbers = interactor.primesNumbersEntity.numbers
        
        addNewValue()
    }
    
    override func addNewValue() {
        interactor.addNewValue()
        self.numbers = interactor.primesNumbersEntity.numbers
    }
}
