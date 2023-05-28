//
//  BackgroundView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/25.
//

import SwiftUI

struct BackgroundView: View {
    let count: Int
//    let isSetGradation: Bool

    var body: some View {
        switch count % 10 {
        case 0:
            Color.black
        case 1:
            Color.red
        case 2:
            Color.gray
        case 3:
            Color.blue
        case 4:
            Color.green
        case 5:
            Color.orange
        case 6:
            Color.yellow
        case 7:
            Color.brown
        case 8:
            Color.cyan
        case 9:
            Color.indigo
        default:
            Color.clear
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(count: 0)
    }
}
