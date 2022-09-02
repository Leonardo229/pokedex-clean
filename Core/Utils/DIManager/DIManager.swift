////
////  DIManager.swift
////  Utils
////
////  Created by Leonardo Coelho on 25/08/22.
////
//
//import Foundation
//
//
//public struct DependencyInjector {
//    public static var dependencyList: [String:Any] = [:]
//
//    public static func resolve<T>() -> T {
//        guard let t = dependencyList[String(describing: T.self)] as? T else {
//            print(dependencyList
//            )
//            fatalError("No povider registered for type \(T.self)")
//        }
//        return t
//    }
//
//    public static func register<T>(dependency: T) {
//        dependencyList[String(describing: T.self)] = dependency
//        print(dependencyList)
//    }
//}
//
//@propertyWrapper public struct Inject<T> {
//    public var wrappedValue: T
//
//    public init() {
//        self.wrappedValue = DependencyInjector.resolve()
//    }
//}
//
//@propertyWrapper public struct Provider<T> {
//    public var wrappedValue: T
//
//    public init(wrappedValue: T) {
//        self.wrappedValue = wrappedValue
//        DependencyInjector.register(dependency: wrappedValue)
//        print("injetado ->", String(describing: T.self)) 
//    }
//}
