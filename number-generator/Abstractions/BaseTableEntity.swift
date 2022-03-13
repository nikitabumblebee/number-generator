//
//  BaseTable.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

/// Provides a properties and methos for table entity
protocol BaseTableEntity {
    
    /// Gets numbers collection
    var numbers: [String] { get }
    
    /// Add new value to collection
    func addNewValue()
}
