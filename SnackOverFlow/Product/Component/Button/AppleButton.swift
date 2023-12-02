//
//  AppleButton.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

struct AppleButton: View {
    var onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack {
                Image(Icons.apple.rawValue)
                Text(ResourceKey.apple.locate())
                Spacer()
            }.tint(.white).padding()

        }.buttonBorderShape (.roundedRectangle)
            .controlSize(.large)
            .background (Color.black)
            .cornerRadius(12)

    }
}

#Preview {
    AppleButton { }
}
