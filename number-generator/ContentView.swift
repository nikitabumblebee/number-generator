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
            NumbersTableView(presenter: NumbersTablePresenter(tableType: NumericTableType.Prime))
                .tabItem {
                    Label("Prime", systemImage: "number.circle")
                }
            NumbersTableView(presenter: NumbersTablePresenter(tableType: NumericTableType.Fibonacci))
                .tabItem {
                    Label("Prime", systemImage: "paperclip.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
