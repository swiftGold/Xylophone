//
//  Helpers.swift
//  Xylophone2023
//
//  Created by Сергей Золотухин on 23.01.2023.
//

import Foundation

public func make<T>(_ object: T, using closure: (inout T) -> Void) -> T {
    var object = object
    closure(&object)
    return object
}
