//
//  ColorExtension.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/28.
//

import Foundation
import SwiftUI

extension Color {
    // カスタムカラー
    static let darkBrown = Color("darkBrown")
    static let darkGray = Color("darkGray")
    static let darkGreen = Color("darkGreen")
    static let jetBrack = Color("jetBack")
    static let lemonYellow = Color("lemonYellow")
    static let limeGreen = Color("limeGreen")
    static let naturalGreen = Color("naturalGreen")
    static let navy = Color("navy")
    static let pink = Color("pink")
    static let pureWhite = Color("pureWhite")
    static let purple = Color("purple")
    static let realOrange = Color("realOrange")
    static let roseRed = Color("roseRed")
    static let skyBlue = Color("skyBlue")

    // グラデーション
    static let lemonYellToSkyBlue = LinearGradient(gradient: Gradient(colors: [.lemonYellow, .skyBlue]), startPoint: .leading, endPoint: .trailing)
    static let pinkToPurple = LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing)

}
