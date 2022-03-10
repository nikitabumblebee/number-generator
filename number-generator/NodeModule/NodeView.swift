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
        ZStack {
            GeometryReader { geometry in
//                Rectangle()
//                    .frame(width: geometry.size.width, alignment: .center)
//                    .foregroundColor(Color.red)
            }
            Text(String(presenter.numberValue))
                .font(.system(size: 30))
        }
    }
}

struct NodeView_Previews: PreviewProvider {
    static var previews: some View {
        NodeView(presenter: NodePresenter(numberValue: 10))
    }
}
