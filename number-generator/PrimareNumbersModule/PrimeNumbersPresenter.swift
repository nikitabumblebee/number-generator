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
        var calculation = Calculation()
        var numbers = calculation.primes(upTo: 500)
        
        self.primeNumbers = numbers
    }
}
