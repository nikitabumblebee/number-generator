//
//  PrimeNumber.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

protocol PrimeNumber {    
    func checkPrime(numberValue: String) -> Bool
    func getNextPrime(numberValue: String) -> String
}

extension PrimeNumber {
    func checkPrime(numberValue: String) -> Bool {
        let numberAsInt = Int(numberValue)!
        
        if numberAsInt <= 1 {
            return false
        }
        if numberAsInt <= 3 {
            return true
        }
        if numberAsInt % 2 == 0 || numberAsInt % 3 == 0 {
            return false
        }
        var i = 5
        while i * i <= numberAsInt {
            if (numberAsInt % i == 0 || numberAsInt % (i + 2) == 0) {
                return false
            }
            i = i + 6
        }
        return true
    }
    
    func getNextPrime(numberValue: String) -> String {
        let numberAsInt = Int(numberValue)!
        if numberAsInt <= 1 {
            return "2"
        }
        
        var prime = numberAsInt
        var primeAsString = ""
        var isFound = false
        
        while (!isFound) {
            prime += 1
            primeAsString = String(prime)
            if checkPrime(numberValue: primeAsString) {
                isFound = true
            }
        }
        return primeAsString
    }
}
