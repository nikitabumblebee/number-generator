//
//  FibonacciInteractor.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation
import Combine

/// Provides an interactor layer in VIPER architecture for Fibonacci module
class FibonacciInteractor {
    
    /// Gets an instance of `FibonacciEntity`
    let fibonacciEntity: FibonacciEntity
    
    /**
     Initializes an instance of `FibonacciInteractor`
     
     Creates a constant instance of `FibonacciEntity`
     */
    init() {
        fibonacciEntity = FibonacciEntity()
    }
    
    /**
     Add new value to collection of Fibonacci
     
     Calling this method will add new number
     to the end of the Fibonacci sequence collection
     */
    func addNewValue() {
        fibonacciEntity.addNewValue()
    }
}
