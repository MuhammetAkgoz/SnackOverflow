//
//  EmailButton.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

//
//  GoogleButton.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

struct EmailButton: View {
    var onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack {
                Spacer()
                Text(ResourceKey.email.locate())
                Spacer()
            }.tint(.peach).padding()

        }
            .buttonBorderShape (.roundedRectangle)
            .fontWeight(.bold)
            .controlSize(.large)
            .background (.white)
            .cornerRadius(12)

    }
}

#Preview {
    EmailButton { }
}

