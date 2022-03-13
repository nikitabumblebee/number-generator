//
//  PrimeNumber.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/// Provides prime numbers methods
protocol PrimeNumber {
    
    /**
     Check prime number
     
     Calling this method checking a number for its relation to prime numbers
     
     - Returns: Boolean value of check
     */
    func checkPrime(numberValue: String) -> Bool
    
    /**
     Get next prime number
     
     Calling this method will return next prime number.
     Calculations are done through `String` according to peculiar properties of big integers.
     
     - Returns: Prime number
     */
    func getNextPrime(numberValue: String) -> String
}

extension PrimeNumber {
    func checkPrime(numberValue: String) -> Bool {
        let numberAsInt = UInt64(numberValue)!
        
        if numberAsInt <= 1 {
            return false
        }
        if numberAsInt <= 3 {
            return true
        }
        if numberAsInt % 2 == 0 || numberAsInt % 3 == 0 {
            return false
        }
        var i = 5 as UInt64
        while i * i <= numberAsInt {
            if (numberAsInt % i == 0 || numberAsInt % (i + 2) == 0) {
                return false
            }
            i = i + 6
        }
        return true
    }
    
    func getNextPrime(numberValue: String) -> String {
        let numberAsInt = UInt64(numberValue)!
        if numberAsInt <= 1 {
            return "2"
        }
        
        var prime = numberAsInt
        var primeAsString = ""
        var isFound = false
        
        while (!isFound && prime <= UInt64.max) {
            prime += 1
            primeAsString = String(prime)
            if checkPrime(numberValue: primeAsString) {
                isFound = true
            }
        }
        return primeAsString
    }
}
