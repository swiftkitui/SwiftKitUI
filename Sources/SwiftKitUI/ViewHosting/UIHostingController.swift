//
//  UIHostingController.swift
//  SwiftKitUI
//
//  Created by 张行 on 2019/7/8.
//

import UIKit
import SnapKit
public class UIHostingController<Content:ViewRoot> : UIViewController {
    public var rootView:Content
    public init(rootView: Content) {
        self.rootView = rootView
        super.init(nibName: nil, bundle: nil)
        if let bodyView = TransferiOS(content: rootView).transferView {
            self.view.addSubview(bodyView)
            bodyView.snp.makeConstraints { (maker) in
                maker.center.equalTo(self.view)
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
