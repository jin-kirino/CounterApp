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
                            MinusOneCount()
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

    private func MinusOneCount() {
        count -= 1
    }
}

struct BackgroundView: View {
    let count: Int

    var body: some View {
        if count % 10 == 0 {
            Color.black
        } else if count % 10 == 1 {
            Color.red
        } else if count % 10 == 2 {
            Color.gray
        } else if count % 10 == 3 {
            Color.blue
        } else if count % 10 == 4 {
            Color.green
        } else if count % 10 == 5 {
            Color.orange
        } else if count % 10 == 6 {
            Color.yellow
        } else if count % 10 == 7 {
            Color.brown
        } else if count % 10 == 8 {
            Color.cyan
        } else if count % 10 == 9 {
            Color.indigo
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
