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
}

enum NetworkPath: String {
    case users = "users"

    var baseURL: String {
        "https://reqres.in/api/"
    }

}
