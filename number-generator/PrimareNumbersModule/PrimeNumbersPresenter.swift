//
//  PrimeNumbersPresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class PrimeNumbersPresenter: ObservableObject {
    @Published var primeNumbers: [Int]
    
    init() {
        self.primeNumbers = [2]
        addNewNumbers()
    }
    
    func addNewNumbers() {
        let calculation = Calculation()
        let nextPrimeValue = calculation.getNextPrime(numberValue: primeNumbers.last!)
        primeNumbers.append(nextPrimeValue)
    }
}
