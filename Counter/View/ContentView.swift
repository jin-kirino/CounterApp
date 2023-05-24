//
//  ContentView.swift
//  Counter
//
//  Created by 神　樹里乃 on 2023/05/21.
//

import SwiftUI

struct ContentView: View {
    //    @AppStorage(wrappedValue: 0, "count") private var count: Int
    @StateObject var countViewModel = CountViewModel()
    @State var cont: Int = 0

    var body: some View {
        VStack {
            ZStack {
                BackgroundView(count: countViewModel.count)
                    .ignoresSafeArea()
                Button {
                    countViewModel.plusOneCount()
                } label: {
                    Text("")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.bottom, 10)
                }
                VStack {
                    Spacer()
                    Text("\(countViewModel.count)")
                        .font(.system(size: 120))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 20)
                    Spacer()
                    HStack {
                        Button {
                            countViewModel.minusOneCount()
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
