//
//  CustomButton.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

struct CustomButton: View {
    var label: String
    var onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack {
                Spacer()
                Text(label)
                Spacer()
            }
            
            .tint(.white)
            .padding()

        }
            .buttonBorderShape (.roundedRectangle)
            .fontWeight(.bold)
            .controlSize(.large)
            .background (.peach)
            .cornerRadius(12)

    }
}

#Preview {
    CustomButton(label: "Custom Button") { }
}

