//
//  PrimeNumber.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

protocol PrimeNumber {
    var numberValue: Int { get set }
    
    func checkPrime(numberValue: Int) -> Bool
    func getNextPrime(numberValue: Int) -> Int
}

extension PrimeNumber {
    func checkPrime(numberValue: Int) -> Bool {
        if numberValue <= 1 {
            return false
        }
        if numberValue <= 3 {
            return true
        }
        if numberValue % 2 == 0 || numberValue % 3 == 0 {
            return false
        }
        var i = 5
        while i * i <= numberValue {
            if (numberValue % i == 0 || numberValue % (i + 2) == 0) {
                return false
            }
            i = i + 6
        }
        return true
    }
    
    func getNextPrime(numberValue: Int) -> Int {
        if numberValue <= 1 {
            return 2
        }
        
        var prime = numberValue
        var isFound = false
        
        while (!isFound) {
            prime += 1
            if checkPrime(numberValue: prime) {
                isFound = true
            }
        }
        return prime
    }
}
