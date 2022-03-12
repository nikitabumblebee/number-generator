//
//  FibonacciEntity.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class FibonacciEntity: BaseTableEntity {
    var numbers: [String] = ["0", "1"]
    
    func addNewValue() {
        let calc = Calculation()
        let nextFibonacci = calc.getNextFibonacci(preLastValue: String(numbers[numbers.count - 2]), lastValue: String(numbers[numbers.count - 1]))
        numbers.append(nextFibonacci)
    }
}
