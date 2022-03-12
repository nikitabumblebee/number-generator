//
//  NumberTablePresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

class NumbersTablePresenter: ObservableObject {
    
    @Published var numbers: [Int]
    
    private let tableType: NumericTableType
    
    init(tableType: NumericTableType) {
        self.tableType = tableType
        switch tableType {
        case .Prime:
            self.numbers = [2]
            break
        case .Fibonacci:
            self.numbers = [0, 1]
            break
        }
        addNextNumber()
    }
    
    func addNextNumber() {
        let calculation = Calculation()
        switch tableType {
        case .Prime:
            let nextValue = calculation.getNextPrime(numberValue: numbers.last!)
            numbers.append(nextValue)
            break
        case .Fibonacci:
            let nextValue = calculation.getNextFibonacci(preLastValue: numbers[numbers.count - 2], lastValue: numbers[numbers.count - 1])
            numbers.append(nextValue)
            break
        }
    }
    
}
