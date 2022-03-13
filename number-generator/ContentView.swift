//
//  ContentView.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            NumbersTableView(presenter: PrimeNumbersPresenter(interactor: PrimeNumbersInteractor()))
                .tabItem {
                    Label("Prime", systemImage: "number.circle")
                }
            NumbersTableView(presenter: FibonacciPresenter(interactor: FibonacciInteractor()))
                .tabItem {
                    Label("Fibonacci", systemImage: "paperclip.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
