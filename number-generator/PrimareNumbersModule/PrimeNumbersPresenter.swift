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
        let calculation = Calculation()
        let numbers = calculation.primes(from: 2, upTo: 500)
        
        self.primeNumbers = numbers
    }
    
    func addNewNumbers() {
        let calculation = Calculation()
        let numbers = calculation.primes(from: primeNumbers.last!, upTo: primeNumbers.last! + 500)
        primeNumbers.append(contentsOf: numbers)
    }
}
