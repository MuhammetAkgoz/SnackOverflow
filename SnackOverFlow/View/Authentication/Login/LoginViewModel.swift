//
//  LoginViewModel.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 4.12.2023.
//

import Foundation


final class LoginViewModel: ObservableObject {
    @Published var emailValue: String = "eve.holt@reqres.in"
    @Published var passwordValue: String = "cityslicka"
    @Published var token: String = ""
    @Published var isActive: Bool = false

    private let service: NetworkManager

    init() {
        service = NetworkManager()
    }

    func login() async {
        //guard emailValue.isEmpty || passwordValue.isEmpty else { return }

        let response = await service.post(path: .login, model: LoginRequest(email: self.emailValue, password: self.passwordValue), type: LoginResponse.self)
        
        token = response?.token ?? "ERROR"
        isActive = !token.isEmpty
    }
}
