//
//  Calculation.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class Calculation {
    func primes(upTo rangeEndNumber: Int) -> [Int] {
        let firstPrime = 2
        guard rangeEndNumber >= firstPrime else {
            fatalError("End of range has to be greater than or equal to \(firstPrime)!")
        }
        var numbers = Array(firstPrime...rangeEndNumber)

        // Index of current prime in numbers array, at the beginning it is 0 so number is 2
        var currentPrimeIndex = 0

        // Check if there is any number left which could be prime
        while currentPrimeIndex < numbers.count {
            // Number at currentPrimeIndex is next prime
            let currentPrime = numbers[currentPrimeIndex]

            // Create array with numbers after current prime and remove all that are divisible by this prime
            var numbersAfterPrime = numbers.suffix(from: currentPrimeIndex + 1)
            numbersAfterPrime.removeAll(where: { $0 % currentPrime == 0 })

            // Set numbers as current numbers up to current prime + numbers after prime without numbers divisible by current prime
            numbers = numbers.prefix(currentPrimeIndex + 1) + Array(numbersAfterPrime)

            // Increase index for current prime
            currentPrimeIndex += 1
        }

        return numbers
    }
}
