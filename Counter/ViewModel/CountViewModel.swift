//
//  CountViewModel.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/23.
//

import Foundation

class CountViewModel: ObservableObject {
    @Published var count: Int = 0

    func plusOneCount() {
        count += 1
    }

    func minusOneCount() {
        count -= 1
    }
}
