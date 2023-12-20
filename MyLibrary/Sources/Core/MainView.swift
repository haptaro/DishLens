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
                    MainButton(title: "Take a photo", action: {
                        router.navigate(to: .second)
                    })
                }
                .injectRouter()
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Button(action: {
                            router.navigate(to: .settings)
                        }, label: {
                            Image(systemName: "gearshape.fill")
                        })
                    })
                })
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarBackground(Color.gray, for: .navigationBar)
            
        })
        .environment(\.router, router)
    }
}

#Preview {
    MainView()
}
