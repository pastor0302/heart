//
//  ContentView.swift
//  Heart APP
//
//  Created by sermacbook_14 on 7/2/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView{
                HomeScreen()
                    .tabItem{
                        Image(systemName: "square")
                            Color.black
                        Text("Sign In")
            }
        }
    }
}
#Preview{
    ContentView()
}
