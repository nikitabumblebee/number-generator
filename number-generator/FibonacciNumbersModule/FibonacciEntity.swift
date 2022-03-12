//
//  FibonacciEntity.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class FibonacciEntity: BaseTableEntity {
    var numbers: [Int] = [0, 1]
    
    func addNewValue() {
        let calc = Calculation()
        let nextFibbonacci = calc.getNextFibonacci(preLastValue: numbers[numbers.count - 2], lastValue: numbers[numbers.count - 1])
        numbers.append(nextFibbonacci)
    }
}
