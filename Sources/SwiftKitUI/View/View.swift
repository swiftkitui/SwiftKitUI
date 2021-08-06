//
//  View.swift
//  
//
//  Created by 张行 on 2019/7/8.
//

public protocol View {}

public protocol BodyView: View {
    var body:View {get}
}
