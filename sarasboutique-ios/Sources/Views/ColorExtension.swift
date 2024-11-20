//
//  ColorExtension.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-20.
//

import SwiftUI

extension Color {
    // Initialize Color from Hex value
    init(hex: String) {
        // Remove any leading '#' or whitespaces
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        
        // If the hex code is incorrect or invalid, return a default color
        guard hexSanitized.count == 6 else {
            self.init(.gray) // Default to gray if the input is invalid
            return
        }
        
        // Extract the RGB components
        let scanner = Scanner(string: hexSanitized)
        var rgb: UInt64 = 0
        
        // Scan the hex string into the RGB value
        if scanner.scanHexInt64(&rgb) {
            let red = Double((rgb & 0xFF0000) >> 16) / 255.0
            let green = Double((rgb & 0x00FF00) >> 8) / 255.0
            let blue = Double(rgb & 0x0000FF) / 255.0
            
            // Initialize the Color
            self.init(red: red, green: green, blue: blue)
        } else {
            self.init(.gray) // Default to gray if scanning fails
        }
    }
}

