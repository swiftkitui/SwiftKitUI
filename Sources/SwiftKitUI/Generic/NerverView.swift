//
//  NerverView.swift
//  
//
//  Created by 张行 on 2019/7/8.
//

extension Never : View {
    public var body : Never { fatalError("no body in Never") }
}

extension View where Body == Never {
    public var body : Never { fatalError("no body in \(type(of: self))") }
}
