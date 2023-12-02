//
//  ResourceKey.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI
enum ResourceKey: String {
    case facebook = "signInFacebook"
    case google = "signInGoogle"
    case apple = "signInApple"
    case email = "signUpEmail"
}




extension ResourceKey {
    func locate() -> LocalizedStringKey {
        return LocalizedStringKey(rawValue)
    }

}
