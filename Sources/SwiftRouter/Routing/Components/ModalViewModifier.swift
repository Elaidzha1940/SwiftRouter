//  /*
//
//  Project: ArchitectureEchoUI
//  File: ModalViewModifier.swift
//  Created by Elaidzha Shchukin
//  Date: 28.02.2025
//
//  */

import SwiftUI

struct ModalSupportView<Content: View>: View {
    let bcColor: Color
    let transition: AnyTransition
    @Binding var showModal: Bool
    @ViewBuilder var content: Content
    
    var body: some View {
        ZStack {
            if showModal {
                bcColor
                    .ignoresSafeArea()
                    .transition(AnyTransition.opacity.animation(.smooth))
                    .onTapGesture {
                        showModal = false
                    }
                    .zIndex(1)
                
                content
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                    .transition(transition)
                    .zIndex(2)
            }
        }
        .animation(.bouncy, value: showModal)
        .zIndex(9999)
    }
}

extension View {
    func modalViewModifier(bcColor: Color, transition: AnyTransition, screen: Binding<AnyDestination?>) -> some View {
        self
            .overlay(
                ModalSupportView(bcColor: bcColor, transition: transition, showModal: Binding(ifNotNil: screen)) {
                    ZStack {
                        if let screen = screen.wrappedValue {
                            screen.destination
                        }
                    }
                }
            )
    }
}
