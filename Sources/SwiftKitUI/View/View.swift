//
//  View.swift
//  
//
//  Created by 张行 on 2019/7/8.
//

public protocol View {
    associatedtype Body
    var body:Self.Body {get}
}

public class ViewRoot : View {
    public typealias Body = ViewRoot
    public var viewIdentifier: String { "\(type(of: self))" }
    public var body: ViewRoot { ViewRoot() }
}
