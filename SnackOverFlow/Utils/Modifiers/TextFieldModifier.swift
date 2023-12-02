//
//  TextFieldModifer.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import Foundation
import SwiftUI


struct TextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        return content.padding()
            .overlay(RoundedRectangle(cornerRadius: .kSize16)
            .stroke(lineWidth: 2.0))
            .foregroundColor(.carl)
    }
    
}
