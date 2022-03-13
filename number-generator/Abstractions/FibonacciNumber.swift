//
//  FibonacciNumber.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/// Provides Fibonacci sequence methods
protocol FibonacciNumber {
    
    /**
     Get next Fibonacci number in sequence
     
     - Returns: Next Fibonacci number in sequence
     */
    func getNextFibonacci(preLastValue: String, lastValue: String) -> String
}

/// Provides default reqlization of `FibonacciNumber` protocol methods
extension FibonacciNumber {
    func getNextFibonacci(preLastValue: String, lastValue: String) -> String {
        var resultValue: String = ""
        var divisionRemainder = 0
        var integerPart = 0
        var myFirstValue = preLastValue
        let mySecondValue = lastValue
        
        let max = max(preLastValue.count, lastValue.count)
        if preLastValue.count < lastValue.count {
            let iterationCount = max - myFirstValue.count
            for _ in 0..<(iterationCount) {
                myFirstValue.insert("0", at: myFirstValue.startIndex)
            }
        }
        var iterator = max - 1
        while (iterator >= 0) {
            divisionRemainder = (integerPart + Int(myFirstValue[iterator])! + Int(mySecondValue[iterator])!) % 10
            resultValue += String(divisionRemainder)
            integerPart = (integerPart + Int(myFirstValue[iterator])! + Int(mySecondValue[iterator])!) / 10
            if integerPart != 0 && iterator == 0 {
                resultValue += String(integerPart)
            }
            iterator -= 1
        }
        return String(resultValue.reversed())
    }
}
