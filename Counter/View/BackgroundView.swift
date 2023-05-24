//
//  BackgroundView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/25.
//

import SwiftUI

struct BackgroundView: View {
    let count: Int

    var body: some View {
        if count % 10 == 0 {
            Color.black
        } else if count % 10 == 1 {
            Color.red
        } else if count % 10 == 2 {
            Color.gray
        } else if count % 10 == 3 {
            Color.blue
        } else if count % 10 == 4 {
            Color.green
        } else if count % 10 == 5 {
            Color.orange
        } else if count % 10 == 6 {
            Color.yellow
        } else if count % 10 == 7 {
            Color.brown
        } else if count % 10 == 8 {
            Color.cyan
        } else if count % 10 == 9 {
            Color.indigo
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(count: 0)
    }
}
