//
//  ContentView.swift
//  DishLens
//
//  Created by Kotaro Fukuo on 2023/12/18.
//

import SwiftUI
import MyLibrary

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(showOutput())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
