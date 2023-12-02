//
//  FacebookButton.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

struct FacebookButton: View {
    var onTap: ( )-> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(Icons.facebook.rawValue)
                Text(ResourceKey.facebook.locate())
                Spacer()
            }
            .tint(.white)
            .background(.deepSkyBlue)
        }.buttonStyle(.borderedProminent).controlSize(.large)
            .buttonBorderShape(.roundedRectangle)
    }
}

#Preview {
    FacebookButton {}
}


