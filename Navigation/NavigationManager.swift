//
//  NavigationManager.swift
//  Navigation
//
//  Created by Leonardo Coelho on 24/08/22.
//

import Foundation
import Utils
import SwiftUI
public class NavigationManager: ObservableObject {
    @Published var currentPage: NavigationRoutes = .PokedexList
    private var navigationStack: [NavigationRoutes] = [.PokedexList]
    
    
    public func navigateTo(route: NavigationRoutes) {
        navigationStack.append(route)
        currentPage = navigationStack.last!
    }
    
    public func popView() {
        navigationStack.removeLast()
        currentPage = navigationStack.last!
    }
    
    public func navigationBinding(route: NavigationRoutes) -> Binding<Bool> {
        return .init(get: { () -> Bool in
            return self.currentPage == route
        }) { (value) in
            self.currentPage = route
        }
    }
    
}
