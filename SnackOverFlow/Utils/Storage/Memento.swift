//
//  Memento.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 3.12.2023.
//

import Foundation

enum StorageKey: String {
    case isOponed
}

protocol IMemento {
    func get(key: StorageKey) -> String
    func set(key: StorageKey, value: String) -> Void
    func delete(key: StorageKey) -> Void
}

struct Memento : IMemento {}

extension IMemento {
    /// Get your stored value
    /// - Parameter key: What key was it stored with
    /// - Returns: Stored value
    func get(key: StorageKey) -> String {
        guard let value = UserDefaults.standard.value(forKey: key.rawValue) as? String else { return "" }
        return value
    }

    /// Set your value to be stored
    /// - Parameter key: What key will it stored with
    func set(key: StorageKey, value: String) -> Void {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }

    /// Delete your stored value
    /// - Parameter key: What key was it stored with
    func delete(key: StorageKey) -> Void {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}
