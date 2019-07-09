//
//  Transfer.swift
//  SwiftKitUI
//
//  Created by 张行 on 2019/7/8.
//

public protocol Transfer {
    associatedtype ViewType
    var transferView:Self.ViewType? {get set}
    func transferView(content:ViewRoot) -> Self.ViewType
}

public enum Stack {
    case hStack
    case vStack
    case zStack
    public func viewIdentifier() -> String {
        switch self {
        case .hStack:
            return "\(HStack.self)"
        case .vStack:
            return "\(VStack.self)"
        case .zStack:
            return "\(ZStack.self)"
        }
    }
}
