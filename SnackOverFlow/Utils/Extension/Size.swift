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

