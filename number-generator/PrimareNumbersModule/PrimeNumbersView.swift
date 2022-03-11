//
//  PrimeNumbersView.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import SwiftUI

struct PrimeNumbersView: View {
    @ObservedObject var presenter: PrimeNumbersPresenter
        
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 0)], spacing: 0) {
                ForEach(0..<presenter.primeNumbers.count, id: \.self) { item in
                    if item == presenter.primeNumbers.count - 1 {
                        let currentValue = presenter.primeNumbers[item]
                        let nodePresenter = NodePresenter(numberValue: currentValue, isLast: true)
                        NodeView(presenter: nodePresenter)
                            .background(((item % 4) == 1) || ((item % 4) == 2) ? .gray : .cyan)
                            .onAppear {
                                presenter.addNewNumbers()
                            }
                    }
                    else {
                        let currentValue = presenter.primeNumbers[item]
                        let nodePresenter = NodePresenter(numberValue: currentValue, isLast: false)
                        NodeView(presenter: nodePresenter)
                            .background(((item % 4) == 1) || ((item % 4) == 2) ? .gray : .cyan)
                    }
                }
            }
            .padding(.top)
        }
    }
}

struct PrimeNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        PrimeNumbersView(presenter: PrimeNumbersPresenter())
    }
}
