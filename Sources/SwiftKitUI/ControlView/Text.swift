//
//  Text.swift
//  SwiftKitUI
//
//  Created by 张行 on 2019/7/8.
//

public class Text : ViewRoot {
    public var content:String
    public init<S>(_ content: S) where S : StringProtocol {
        self.content = String(content)
    }
}
