//  /*
//
//  Project: ArchitectureEchoUI
//  File: NavigationStackIfNeeded.swift
//  Created by Elaidzha Shchukin
//  Date: 28.02.2025
//
//  */

import SwiftUI

struct NavigationStackIfNeeded<Content: View>: View {
    @Binding var path: [AnyDestination]
    var addNavigationView: Bool = true
    @ViewBuilder var content: Content
    
    var body: some View {
        if addNavigationView {
            NavigationStack(path: $path) {
                content
                    .foregroundStyle(.mint)
                    .navigationDestination(for: AnyDestination.self) { value in
                        value.destination
                    }
            }
        } else {
            content
        }
    }
}
