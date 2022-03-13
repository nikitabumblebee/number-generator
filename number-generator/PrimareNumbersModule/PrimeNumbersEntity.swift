//
//  PrimeNumberEntity.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/// Provides data and methods for collection of prime numbers
class PrimeNumbersEntity: BaseTableEntity, PrimeNumber {
    
    /// Gets a collection of prime numbers
    private(set) var numbers: [String] = ["2"]
    
    /**
     Add new value of prime number
     
     Calling this method will add next prime number of last item in `numbers` collection
     to this collection
     */
    func addNewValue() {
        let nextPrimeValue = getNextPrime(numberValue: numbers.last!)
        numbers.append(nextPrimeValue)
    }
}
