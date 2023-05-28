//
//  SettingView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/28.
//

import SwiftUI

struct SettingView: View {
    @ObservedObject var counterModel = CounterModel()
    @Environment(\.dismiss) var dismiss

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
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        UserDefaults.standard.set(counterModel.isGradation, forKey: "gradationKey")
                        UserDefaults.standard.set(counterModel.isChangeBackgroundColor, forKey: "ChangeBackgroundColorKey")
                        dismiss()
                    } label: {
                        Text("完了")
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
