//
//  ContentView.swift
//  DishLens
//
//  Created by Kotaro Fukuo on 2023/12/18.
//

import SwiftUI
import DesignSystem

struct ContentView: View {
    var body: some View {
        MainButton(title: "Test", action: {
            print(">>> Test")
        })
    }
}

#Preview {
    ContentView()
}
