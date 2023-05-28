//
//  CounterModel.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/28.
//

import Foundation
import SwiftUI

class CounterModel: ObservableObject {
    @Published var count: Int {
        didSet {
            UserDefaults.standard.set(count, forKey: "countKey")
        }
    }

    @Published var isGradation: Bool {
        didSet {
            UserDefaults.standard.set(isGradation, forKey: "gradationKey")
        }
    }

    @Published var isChangeBackgroundColor: Bool {
        didSet {
            UserDefaults.standard.set(isChangeBackgroundColor, forKey: "ChangeBackgroundColorKey")
        }
    }

    init() {
        count = UserDefaults.standard.integer(forKey: "countKey")
        isGradation = UserDefaults.standard.bool(forKey: "gradationKey")
        isChangeBackgroundColor = UserDefaults.standard.bool(forKey: "ChangeBackgroundColorKey")
    }
}
