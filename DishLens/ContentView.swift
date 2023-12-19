//
//  ContentView.swift
//  DishLens
//
//  Created by Kotaro Fukuo on 2023/12/18.
//

import SwiftUI
import DesignSystem
import Core

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                MainButton(title: "Test", action: {
                    print(">>> Test")
                })
                NavigationLink("To Main View", destination: {
                    MainView()
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
