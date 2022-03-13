//
//  FibonacciEntity.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/**
 Provides properties and methods for Fibonacci sequence
 
 Realizes `BaseTableEntity` and `FibonacciNumber` protocols
 */
class FibonacciEntity: BaseTableEntity, FibonacciNumber {
    
    /// Gets a collection of Fibonacci sequence
    private(set) var numbers: [String] = ["0", "1"]
    
    /**
     Add new value to Fibonacci sequence
     
     Calling this method will find next Fibonacci number and ads this value to the end of Fibonacci sequence
     */
    func addNewValue() {
        let nextFibonacci = getNextFibonacci(preLastValue: String(numbers[numbers.count - 2]), lastValue: String(numbers[numbers.count - 1]))
        numbers.append(nextFibonacci)
    }
}
