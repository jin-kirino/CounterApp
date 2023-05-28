//
//  ContentView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("countKey") var count: Int = 0

    var body: some View {
        VStack {
            ZStack {
                BackgroundView(count: count)
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
                    Text("\(count)")
                        .font(.system(size: 120))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 20)
                    Spacer()
                    HStack {
                        Button {
                            count = 0
                        } label: {
                            Text("0")
                                .font(.system(size: 15))
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.white)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 3)
                                )
                                .padding(.leading)
                        }

                        Button {
                            minusOneCount()
                        } label: {
                            Text("ー")
                                .font(.system(size: 15))
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.white)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 3)
                                )
                                                            .padding(.leading)
                        }
                        Spacer()
                    }
                }
            }
        }
    }

    private func plusOneCount() {
        count += 1
    }

    private func minusOneCount() {
        count -= 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
