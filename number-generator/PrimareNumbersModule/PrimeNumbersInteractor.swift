//
//  PrimeNumbersInteractor.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/// Provides a layer for iteractor in VIPER architecture for `Prime Numbers`
class PrimeNumbersInteractor {
    
    /// Gets an instance of `PrimeNumbersEntity`
    private(set) var primesNumbersEntity: PrimeNumbersEntity
    
    /**
     Initializes an instance of `PrimeNumbersInteractor`
     
     Creates an instance of `PrimeNumbersEntity`
     */
    init() {
        primesNumbersEntity = PrimeNumbersEntity()
    }
    
    /**
     Add new value to prime numbers collection
     
     Calling this method will ads new value to  the end of prime numbers collection
     */
    func addNewValue() {
        primesNumbersEntity.addNewValue()
    }
}
