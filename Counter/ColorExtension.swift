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
    static let jetBlack = Color("jetBlack")
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
    static let allGradation = RadialGradient(gradient: Gradient(colors: [.purple, .blue, .green, .yellow, .orange, .red]), center: .center, startRadius: 30, endRadius: 300)
    static let lemonYellToSkyBlue = LinearGradient(gradient: Gradient(colors: [.lemonYellow, .skyBlue]), startPoint: .leading, endPoint: .trailing)
    static let pinkToPurple = RadialGradient(gradient: Gradient(colors: [.pink, .purple]), center: .center, startRadius: 1, endRadius: 300)
    static let skyBlueToNavy = LinearGradient(gradient: Gradient(colors: [.skyBlue, .navy]), startPoint: .leading, endPoint: .trailing)
    static let orangeToRoseRed = RadialGradient(gradient: Gradient(colors: [.orange, .roseRed]), center: .center, startRadius: 1, endRadius: 300)
    static let purpleToJetBlack = LinearGradient(gradient: Gradient(colors: [.purple, .jetBlack]), startPoint: .leading, endPoint: .trailing)
    static let limeGreenToDarkGreen = LinearGradient(gradient: Gradient(colors: [.limeGreen, .darkGreen]), startPoint: .leading, endPoint: .trailing)
    static let pinlToSkyBlue = LinearGradient(gradient: Gradient(colors: [.pink, .skyBlue]), startPoint: .leading, endPoint: .trailing)
    static let pureWhiteToPurple = LinearGradient(gradient: Gradient(colors: [.pureWhite, purple]), startPoint: .leading, endPoint: .trailing)
    static let realOrangeToNavy = LinearGradient(gradient: Gradient(colors: [.realOrange, .navy]), startPoint: .top, endPoint: .bottom)
    static let jetBlackToSkyBlue = LinearGradient(gradient: Gradient(colors: [.jetBlack, .skyBlue]), startPoint: .leading, endPoint: .trailing)
}
