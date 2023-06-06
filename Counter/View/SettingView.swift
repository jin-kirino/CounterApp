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
                Section(header: Text("背景色設定")) {
                    Toggle(isOn: $counterModel.isGradation) {
                        Text("グラデーション")
                    }
                    Toggle(isOn: $counterModel.isChangeBackgroundColor) {
                        Text("色を変更")
                    }
                }
                Section(header: Text("情報")) {
                    HStack {
                        Text("バージョン")
                        Spacer()
                        Text("1.0(0)")
                            .foregroundColor(Color.gray)
                    }
                }
            }
            .navigationTitle("Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
