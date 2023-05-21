//
//  ContentView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/21.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0

    var body: some View {
        VStack {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                Button {
                    addOneCount()
                } label: {
                    Text("")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.bottom, 10)
                }
                VStack {
                    Spacer()
                    Text("\(count)")
                        .font(.system(size: 90))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 20)
                    Spacer()
                    HStack {
                        Button {
                            MinusOneCount()
                        } label: {
                            Text("ー")
                                .font(.title)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.white)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 3)
                                )
                                .padding()
                        }
                        Spacer()
                    }
                }
            }
        }
    }

    private func addOneCount() {
        count += 1
    }

    private func MinusOneCount() {
        count -= 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
