//
//  GoogleButton.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

struct GoogleButton: View {
    var onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack {
                Image(Icons.google.rawValue)
                Text(ResourceKey.google.locate())
                Spacer()
            }.tint(.black).padding()

        }
            .buttonBorderShape (.roundedRectangle)
            .controlSize(.large)
            .background (Color.white)
            .cornerRadius(12)

    }
}

#Preview {
    GoogleButton { }
}
