//
//  Size.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 2.12.2023.
//

import SwiftUI

extension GeometryProxy {
    /// Calculate dynamic height
    /// - Parameter height: Percent of screen height
    /// - Returns: Dynamic height
    func dynamicSize(height: Double) -> Double {
        return size.height * height
    }

    /// Calculate dynamic width
    /// - Parameter height: Percent of screen width
    /// - Returns: Dynamic width
    func dynamicSize(width: Double) -> Double {
        return size.width * width
    }
}


extension CGFloat {
    public static let kSize4: Double = 4.0
    public static let kSize8: Double = 8.0
    public static let kSize12: Double = 12.0
    public static let kSize16: Double = 16.0
    public static let kSize20: Double = 20.0


    func toInt() -> Int {
        return Int(self)
    }
}
