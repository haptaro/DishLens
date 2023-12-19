//
//  MainView.swift
//
//
//  Created by Kotaro Fukuo on 2023/12/19.
//

import SwiftUI

@MainActor
public struct MainView: View {
    @State private var router = Router()
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $router.currentPath, root: {
            SecondView()
                .injectRouter()
        })
        .environment(\.router, router)
    }
}

#Preview {
    MainView()
}
