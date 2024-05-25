//
//  RandomColor.swift
//  Homework29
//
//  Created by Nodiko Gachava on 25.05.24.
//

import SwiftUI

func randomColor() -> Color {
    return Color(
        red: .random(in: 0...1),
        green: .random(in: 0...1),
        blue: .random(in: 0...1)
    )
}
