//
//  Calculation.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class Calculation {
    func primes(from rangeStartNumber: Int, upTo rangeEndNumber: Int) -> [Int] {
        let firstPrime = rangeStartNumber
        guard rangeEndNumber >= firstPrime else {
            fatalError("End of range has to be greater than or equal to \(firstPrime)!")
        }
        var numbers = Array(firstPrime...rangeEndNumber)

        var currentPrimeIndex = 0

        while currentPrimeIndex < numbers.count {
            let currentPrime = numbers[currentPrimeIndex]

            var numbersAfterPrime = numbers.suffix(from: currentPrimeIndex + 1)
            numbersAfterPrime.removeAll(where: { $0 % currentPrime == 0 })

            numbers = numbers.prefix(currentPrimeIndex + 1) + Array(numbersAfterPrime)

            currentPrimeIndex += 1
        }

        return numbers
    }
    
    func fibonachi() -> [Int] {
        var numbers = [1,2,3]
        return numbers
    }
}
