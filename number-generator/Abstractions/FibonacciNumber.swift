//
//  FibonacciNumber.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

protocol FibonacciNumber {
    var numberValue: Int { get set }
    
    func getNextFibonacci(preLastValue: Int, lastValue: Int) -> Int
}

extension FibonacciNumber {
    func getNextFibonacci(preLastValue: Int, lastValue: Int) -> Int {
        return preLastValue + lastValue
    }
}
