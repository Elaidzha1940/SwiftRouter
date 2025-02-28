//  /*
//
//  Project: ArchitectureEchoUI
//  File: SegueOption.swift
//  Created by Elaidzha Shchukin
//  Date: 28.02.2025
//
//  */

import SwiftUI

public enum SegueOption {
    case push, sheet, fullScreenCover
    
    var shouldAddNewNavigationView: Bool {
        switch self {
        case .push:
            return false
        case .sheet, .fullScreenCover:
            return true
        }
    }
}
