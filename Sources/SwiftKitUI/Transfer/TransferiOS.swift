//
//  TransferiOS.swift
//  SwiftKitUI
//
//  Created by 张行 on 2019/7/8.
//

import UIKit

public class TransferiOS<Content:ViewRoot> : Transfer {
    public typealias ViewType = UIView
    public var content:Content
    public var transferView: UIView?
    init(content:Content) {
        self.content = content
        self.transferView = self.transferView(content: content)
    }
    
    public func transferView(content: ViewRoot) -> UIView {
        var body = content.body
        if body.viewIdentifier != Stack.hStack.viewIdentifier() && body.viewIdentifier != Stack.vStack.viewIdentifier() && body.viewIdentifier != Stack.zStack.viewIdentifier() {
            body = VStack {
                body
            }
        }
        return createView(content: body)
    }
    
    public func createView(content:ViewRoot) -> UIView {
        if let vStackView = content as? VStack {
            return transferVStack(content: vStackView)
        }
        return UIView()
    }
    
    public func parseViews(content:ViewRoot) -> [UIView] {
        if let text = content as? Text {
            return [transferUILabel(content: text)]
        }
        return [UIView()]
    }
    
    public func transferUILabel(content:Text) -> UILabel {
        let label = UILabel()
        label.text = content.content
        return label
    }
    
    public func transferVStack(content:VStack) -> UIStackView {
        let contentViews = parseViews(content: content.content)
        let vStackView = UIStackView(arrangedSubviews: contentViews)
        vStackView.axis = .vertical
        return vStackView
    }
}
