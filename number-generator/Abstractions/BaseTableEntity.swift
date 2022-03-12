//
//  BaseTable.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/12/22.
//

import Foundation

protocol BaseTableEntity {
    var numbers: [String] { get set }
    
    func addNewValue()
}