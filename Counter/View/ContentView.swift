//
//  ContentView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var counterModel = CounterModel()
    @State private var isShowSettingSheet: Bool = false
    @State private var showingDialog = false

    var body: some View {
        VStack {
            NavigationView {
                ZStack {
                    BackgroundView(count: counterModel.count)
                        .ignoresSafeArea()
                    Button {
                        plusOneCount()
                    } label: {
                        Text("")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .padding(.bottom, 10)
                    }
                    VStack {
                        Spacer()
                        Text("\(counterModel.count)")
                            .font(.system(size: 120))
                            .foregroundColor(Color.white)
                            .padding(.bottom, 20)
                        Spacer()
                        HStack {
                            Button {
                                showingDialog = true
                            } label: {
                                BottonView(buttonName: "0")
                            }
                            .confirmationDialog("最終確認", isPresented: $showingDialog, titleVisibility: .visible) {
                                Button {
                                    counterModel.count = 0
                                } label: {
                                    Text("リセット")
                                        .foregroundColor(Color.roseRed)
                                }
                            } message: {
                                Text("本当にリセットしますか？")
                            }
                            Button {
                                minusOneCount()
                            } label: {
                                BottonView(buttonName: "ー")
                            }
                            Spacer()
                            NavigationLink(destination: SettingView(counterModel: counterModel)) {
                                BottonView(buttonName: "i")
                                    .padding(.trailing)
                            }
                        }
                    }
                }
            }
        }
    }

    struct BottonView: View {
        var buttonName: String

        var body: some View {
            Text(buttonName)
                .font(.system(size: 15))
                .frame(width: 20, height: 20)
                .foregroundColor(Color.white)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 3)
                )
                .padding(.bottom)
                .padding(.leading)
        }
    }

    private func plusOneCount() {
        counterModel.count += 1
    }

    private func minusOneCount() {
        counterModel.count -= 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
