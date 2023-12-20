//
//  MainView.swift
//
//
//  Created by Kotaro Fukuo on 2023/12/19.
//

import SwiftUI
import DesignSystem

@MainActor
public struct MainView: View {
    @State private var router = Router()
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $router.currentPath, root: {
            VStack {
                Text("MainView")
                MainButton(title: "To next", action: {
                    router.navigate(to: .second)
                })
            }
            .injectRouter()
        })
        .environment(\.router, router)
    }
}

#Preview {
    MainView()
}
