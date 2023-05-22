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
