//
//  FibonacciNumber.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

protocol FibonacciNumber {
    func getNextFibonacci(preLastValue: String, lastValue: String) -> String
}

extension FibonacciNumber {
    func getNextFibonacci(preLastValue: String, lastValue: String) -> String {
        var res: String = ""
        var c = 0
        var d = 0
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
            c = (d + Int(myFirstValue[iterator])! + Int(mySecondValue[iterator])!) % 10
            res += String(c)
            d = (d + Int(myFirstValue[iterator])! + Int(mySecondValue[iterator])!) / 10
            if d != 0 && iterator == 0 {
                res += String(d)
            }
            iterator -= 1
        }
        return String(res.reversed())
    }
}
