//
//  BaseTablePresenter.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/**
 Provides an abstract class for table presenters
 */
class BaseTablePresenter: ObservableObject {
    
    /// Gets or sets a collection of numbers
    @Published var numbers: [String] = []
    
    /**
     Add new value to collection
     
     Calling this method will add new value to the end of the collection
     */
    func addNewValue() {
        preconditionFailure("This method must be overridden")
    }
}
