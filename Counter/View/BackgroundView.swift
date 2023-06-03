//
//  BackgroundView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/25.
//

import SwiftUI

struct BackgroundView: View {
    @ObservedObject var counterModel = CounterModel()
    let count: Int

    var body: some View {
        if counterModel.isChangeBackgroundColor {
            if counterModel.isGradation {
                // 色変えるグラデーション
                switch count % 10 {
                case 0:
                    Color.lemonYellToSkyBlue
                case 1:
                    Color.pinkToPurple
                case 2:
                    Color.skyBlueToNavy
                case 3:
                    Color.realOrangeToRoseRed
                case 4:
                    Color.purpleToJetBlack
                case 5:
                    Color.limeGreenToDarkGreen
                case 6:
                    Color.pinlToSkyBlue
                case 7:
                    Color.pureWhiteToPurple
                case 8:
                    Color.realOrangeToNavy
                case 9:
                    Color.jetBlackToSkyBlue
                default:
                    Color.clear
                }

            } else {
                // 色変えるビビット
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
        } else {
            if counterModel.isGradation {
                // 色変えないグラデーション
                Color.allGradation
            } else {
                // 色変えないビビット
                Color.darkBrown
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(count: 0)
    }
}
