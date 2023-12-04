//
//  NetworkManager.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 3.12.2023.
//

import Foundation
import Alamofire


protocol INetworkManager {
    func get<T: Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?
    func post<T: Codable, R: Encodable>(path: NetworkPath, model: R, type: T.Type) async -> T?
}

class NetworkManager: INetworkManager {
    func get<T : Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T? {
        let request = AF.request(path.baseURL + path.rawValue, method: method)
            .validate()
            .serializingDecodable(T.self)

        let result = await request.response

        if result.error != nil {
            print("error \(result.error!)")
        }

        return result.value
    }

    func post<T, R>(path: NetworkPath, model: R, type: T.Type) async -> T? where T: Decodable, T: Encodable, R: Encodable {
        guard let json = try? JSONEncoder().encode(model) else { return nil }
        guard let jsonString = String(data: json, encoding: .utf8) else { return nil }

        let request = AF.request(path.baseURL + path.rawValue, method: .post, parameters: convertToDictionary(text: jsonString))
            .validate()
            .serializingDecodable(T.self)

        let result = await request.response

        if result.error != nil {
            print("error \(result.error!)")
        }

        return result.value
    }

    private func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            }
            catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}

enum NetworkPath: String {
    case users = "users"
    case login = "login"

    var baseURL: String {
        "https://reqres.in/api/"
    }

}
