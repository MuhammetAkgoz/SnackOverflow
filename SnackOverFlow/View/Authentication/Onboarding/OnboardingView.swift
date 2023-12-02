//
//  OnboardingView.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

struct OnboardingView: View {
    @State var index = 0

    var body: some View {
        GeometryReader { geo in
            VStack(spacing: .kSize16) {
                // PAGE VIEW
                Spacer()
                TabView(selection: $index) {
                    SlidableCardView(source: Images.shop.rawValue, label: "Shop global. Mind-blownly affordable.").tag(0)
                    SlidableCardView(source: Images.deliver.rawValue, label: "Hand-pickle high quality snacks.").tag(1)
                    SlidableCardView(source: Images.handPick.rawValue, label: "Deliver on the promise of time.").tag(2)
                }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(height: geo.dynamicSize(height: 0.65))
                Spacer()

                // INDICATOR VIEW
                HStack {
                    ForEach(0...2, id: \.self) { index in
                        IndicatorView(width: self.index == index ? 20 : 10)
                    }
                }.frame(height: .kSize12 - 2)

                // BUTTON VIEW
                CustomButton(label: "Get Start") { }
            }.padding(.kSize16)
        }
    }
    
    
}

private struct IndicatorView: View {
    let width: Double
    var body: some View {
        Rectangle().cornerRadius(.kSize16).frame(width: width).foregroundColor(.coolney)
    }
}

private struct SlidableCardView: View {
    let source: String
    let label: String

    var body: some View {
        VStack {
            Image(source)
            Text(label)
                .font(.largeTitle)
                .foregroundStyle(.peach)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    OnboardingView()
}
