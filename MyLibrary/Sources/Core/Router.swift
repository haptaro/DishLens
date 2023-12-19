//
//  Router.swift
//
//
//  Created by Kotaro Fukuo on 2023/12/19.
//

import SwiftUI
import Observation

extension EnvironmentValues {
    var router: Router {
        get { self[RouterKey.self] }
        set { self[RouterKey.self] = newValue }
    }
}

@MainActor
struct RouterKey: EnvironmentKey {
    static var defaultValue: Router = .init()
}


enum Destination: Hashable {
    case main
    case second
}

@MainActor
@Observable
final class Router {
    var currentPath = [Destination]()
    
    func navigate(to destination: Destination) {
        currentPath.append(destination)
    }
    
    func navigateToRoot() {
        currentPath.removeAll()
    }
}

@MainActor
extension View {
    func injectRouter() -> some View {
        navigationDestination(for: Destination.self) { destination in
            switch destination {
            case .main: MainView()
            case .second: SecondView()
            }
        }
    }
}
