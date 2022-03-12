//
//  PrimeNumbersView.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import SwiftUI

struct NumbersTableView: View {
    @ObservedObject var presenter: BaseTablePresenter
            
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 0)], spacing: 0) {
                ForEach(0..<presenter.numbers.count, id: \.self) { item in
                    let currentValue = presenter.numbers[item]
                    let nodePresenter = NodePresenter(numberValue: currentValue)
                    let isFistColor = ((item % 4) == 1) || ((item % 4) == 2)
                    if item == presenter.numbers.count - 1 {
                        NodeView(presenter: nodePresenter)
                            .background(isFistColor ? .gray : .cyan)
                            .onAppear {
                                presenter.addNewValue()
                            }
                    }
                    else {
                        NodeView(presenter: nodePresenter)
                            .background(isFistColor ? .gray : .cyan)
                    }
                }
            }
            .padding(.top)
        }
    }
}

struct PrimeNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersTableView(presenter: BaseTablePresenter() /*NumbersTablePresenter(tableType: NumericTableType.Prime)*/)
    }
}
