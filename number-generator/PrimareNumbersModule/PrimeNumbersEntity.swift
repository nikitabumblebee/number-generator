//
//  PrimeNumberEntity.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class PrimeNumbersEntity: BaseTableEntity {
    var numbers: [String] = ["2"]
    
    func addNewValue() {
        let calculation = Calculation()
        let nextPrimeValue = calculation.getNextPrime(numberValue: numbers.last!)
        numbers.append(nextPrimeValue)
    }
}
