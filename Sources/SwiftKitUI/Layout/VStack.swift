//
//  VStack.swift
//  SwiftKitUI
//
//  Created by 张行 on 2019/7/8.
//

public class VStack : ViewRoot {
    let alignment:HorizontalAlignment
    let spacing:Length?
    let content:ViewRoot
    public init(alignment: HorizontalAlignment = .center, spacing: Length? = nil, content: () -> ViewRoot) {
        self.alignment = alignment
        self.spacing = spacing
        self.content = content()
    }
}
