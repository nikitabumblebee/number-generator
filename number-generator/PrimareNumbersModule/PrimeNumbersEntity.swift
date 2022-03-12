//
//  PrimeNumberEntity.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class PrimeNumbersEntity: BaseTableEntity, PrimeNumber {
    var numbers: [String] = ["2"]
    
    func addNewValue() {
        let nextPrimeValue = getNextPrime(numberValue: numbers.last!)
        numbers.append(nextPrimeValue)
    }
}
