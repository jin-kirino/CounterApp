//
//  SettingView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/28.
//

import SwiftUI

struct SettingView: View {
    @ObservedObject var counterModel = CounterModel()
    @Environment(\.isPresented) var isPresented

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("設定")) {
                    Toggle(isOn: $counterModel.isGradation) {
                        Text("グラデーション")
                    }
                    Toggle(isOn: $counterModel.isChangeBackgroundColor) {
                        Text("色を変更")
                    }
                }
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
