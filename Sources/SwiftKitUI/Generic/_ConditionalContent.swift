//
//  _ConditionalContent.swift
//  SwiftKitUI
//
//  Created by 张行 on 2019/7/8.
//

public struct _ConditionalContent<TrueView:View, FalseView:View> : View {
    let content:Content
    enum Content {
        case ifEirther(TrueView)
        case elseEirther(FalseView)
    }
    init(trueView:TrueView) {
        content = .ifEirther(trueView)
    }
    
    init(falseView:FalseView) {
        content = .elseEirther(falseView)
    }
}
