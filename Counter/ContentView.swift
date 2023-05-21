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
                    print("+1")
                } label: {
                    Text("")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.bottom, 10)
                }
                VStack {
                    Spacer()
                    Text("\(count)")
                        .font(.system(size: 90))
                        .padding(.bottom, 20)
                    Spacer()
                    HStack {
                        Button {
                            print("-1")
                        } label: {
                            Text("ー")
                                .font(.title)
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color.black)
                                .overlay(
                                    Circle()
                                        .stroke(Color.green, lineWidth: 3)
                                )
                                .padding()
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
