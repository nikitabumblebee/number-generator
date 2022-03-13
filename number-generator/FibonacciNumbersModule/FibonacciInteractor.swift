//
//  FibonacciInteractor.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation
import Combine

class FibonacciInteractor {
    let fibonacci = FibonacciEntity()
    
    func addNewValue() {
        fibonacci.addNewValue()
    }
}
