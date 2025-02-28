//  /*
//
//  Project: ArchitectureEchoUI
//  File: AnyDestination.swift
//  Created by Elaidzha Shchukin
//  Date: 28.02.2025
//
//  */

import SwiftUI

public struct AnyDestination: Hashable {
    
    let id = UUID().uuidString
    var destination: AnyView
    
    public init<T: View>(destination: T) {
        self.destination = AnyView(destination)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: AnyDestination, rhs: AnyDestination) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}
