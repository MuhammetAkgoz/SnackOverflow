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
           
                VStack {
                    Image(Icons.app.rawValue)
                    
                    Button(action: {}, label: {
                        HStack {
                            Image(Icons.facebook.rawValue)
                            Text("Button")
                            Spacer()
                        }.padding()
                    }).background(Color.deepSkyBlue)
                }
            
        }
    }
}

#Preview {
    PreLoginView().statusBar(hidden: true)
}
