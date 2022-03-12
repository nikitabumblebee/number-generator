//
//  FibonacciPresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class FibonacciPresenter: ObservableObject {
    @Published var fibonacciNumbers: [Int]
    
    init() {
        self.fibonacciNumbers = [0, 1]
        addFibonacciNumber()
    }
    
    
    func addFibonacciNumber() {
        let calc = Calculation()
        let nextFibbonacci = calc.getNextFibonacci(preLastValue: fibonacciNumbers[fibonacciNumbers.count - 2], lastValue: fibonacciNumbers[fibonacciNumbers.count - 1])
        fibonacciNumbers.append(nextFibbonacci)
    }
}
