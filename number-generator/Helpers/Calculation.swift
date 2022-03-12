//
//  Calculation.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import Foundation

class Calculation: PrimeNumber {
    var numberValue: Int = 0

    func fibonacci() -> [Int] {
        var numbers = [1,2,3]
        return numbers
    }
    
    func fib(_ n: Int) -> Int {
        var a = 1
        var b = 1
        guard n > 1 else { return a }
        
        (2...n).forEach { _ in
            (a, b) = (a + b, a)
        }
        return a
    }
}
