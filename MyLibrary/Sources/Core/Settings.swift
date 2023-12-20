//
//  Settings.swift
//
//
//  Created by Kotaro Fukuo on 2023/12/19.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        List {
            Section(content: {
                Text("Version: 1.0")
            }, header: {
                Text("App")
            })
        }
    }
}

#Preview {
    Settings()
}
