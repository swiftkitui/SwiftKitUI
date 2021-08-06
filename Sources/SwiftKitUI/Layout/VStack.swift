//
//  VStack.swift
//  
//
//  Created by joser on 2021/8/6.
//

import Foundation

public struct VStack<Content:View>: Stack, View {
    let content:Content
    init(@ViewBuilder content:() -> Content) {
        self.content = content()
    }
}


struct MainPage: BodyView {
    var isMe:Bool = false
    var body: View {
        VStack {
            if isMe {
                Text("")
            } else {
                Text("")
            }
        }
    }
}
