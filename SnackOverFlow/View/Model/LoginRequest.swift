//
//  LoginRequest.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 4.12.2023.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userResponseModel = try? JSONDecoder().decode(UserResponseModel.self, from: jsonData)

import Foundation

// MARK: - UserResponseModel
struct LoginRequest: Encodable {
    let email, password: String?
}
