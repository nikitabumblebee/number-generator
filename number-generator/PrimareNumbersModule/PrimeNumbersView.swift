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
                ForEach(presenter.primeNumbers.indices) { index in
                    let currentValue = presenter.primeNumbers[index]
                    let nodePresenter = NodePresenter(numberValue: currentValue)
                    NodeView(presenter: nodePresenter)
                        .background(((index % 4) == 1) || ((index % 4) == 2) ? .gray : .cyan)
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
