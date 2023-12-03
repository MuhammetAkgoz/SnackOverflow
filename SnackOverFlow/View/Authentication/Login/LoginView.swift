//
//  LoginView.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: .kSize16) {
            /// Image View
            Group {
                Spacer()
                Image(Images.volcano.rawValue)
                Text("Welcome Back!").font(.title).fontWeight(.semibold).foregroundStyle(.peach)
                
            }
            
            /// Form View
            Group {
                TextEmailFormField("Write your email",text: .constant(""))
                TextPasswordFormField("Write your password", text: .constant(""))
                Divider()
                    .frame(height:2)
                    .background(.gray.opacity(0.3))
                    .padding(.horizontal,40)
            }
            
            // Button View
            Group {
                CustomButton(label: "Create account") {
                    
                }
                Text("By clicking \"Create account\", I agree to SnackOverflow's [TOS](www.com.vb) and [Privacy Policy](www.com.vb2)")
                    .environment(\.openURL, OpenURLAction(handler: { URL in
                        
                        return .discarded
                    })).foregroundStyle(.gray).font(.footnote)
                Spacer()
            }
            
        }.padding(.kSize16)
    }
}

#Preview {
    LoginView()
}

private struct TextEmailFormField: View {
    let placeholder: String
    let text: Binding<String>
    
    init(_ placeholder: String , text : Binding<String>) {
        self.text = text
        self.placeholder = placeholder
    }
    
    var body: some View {
        HStack {
            Image(systemName: Icons.mail.rawValue).foregroundColor(.gray)
            TextField(placeholder, text: text)
        }.modifier(TextFieldModifier())
    }
}

private struct TextPasswordFormField: View {
    let placeholder: String
    let text: Binding<String>
    
    init(_ placeholder: String , text : Binding<String>) {
        self.text = text
        self.placeholder = placeholder
    }
    
    var body: some View {
        HStack {
            Image(systemName: Icons.password.rawValue).foregroundColor(.gray)
            SecureField(placeholder, text: text)
        }.modifier(TextFieldModifier())
    }
}
