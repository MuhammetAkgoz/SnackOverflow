//
//  PreLoginView.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 30.11.2023.
//

import SwiftUI

struct PreLoginView: View {
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue).resizable()
            Color.black.opacity(0.3)
            BodyView()
        }
            .ignoresSafeArea(.all).toolbar(.hidden)
    }
}

#Preview {
    PreLoginView().statusBar(hidden: true).ignoresSafeArea(.all)
}

private struct BodyView: View {
    var body: some View {

        GeometryReader { geometry in
            VStack(spacing: .kSize16) {
                Spacer()
                Image(Icons.app.rawValue)
                Spacer()
                FacebookButton(onTap: { })
                GoogleButton(onTap: { })
                AppleButton(onTap: { })
                Divider()
                    .frame(height: 2)
                    .background(.white.opacity(0.5))
                    .padding(.horizontal, 40)
                EmailButton(onTap: { })

                Spacer().frame(height: geometry.dynamicSize(height: 0.1))
            }.padding(.padding16)
        }
    }
}
