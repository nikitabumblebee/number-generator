//
//  NodeView.swift
//  number-generator
//
//  Created by Nikita Shmelev on 3/10/22.
//

import SwiftUI

struct NodeView: View {
    @ObservedObject var presenter: NodePresenter
    
    var body: some View {
        GeometryReader { geometry in
            Text(String(presenter.numberValue))
                .font(.system(size: 30))
                .frame(width: geometry.size.width, height: 80)
        }
        .frame(height: 80)
    }
}

struct NodeView_Previews: PreviewProvider {
    static var previews: some View {
        NodeView(presenter: NodePresenter(numberValue: 10, isLast: false))
    }
}
