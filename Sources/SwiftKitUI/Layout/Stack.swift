//
//  Stack.swift
//  
//
//  Created by joser on 2021/8/6.
//

import UIKit

public protocol Stack: View {
    
}

public extension UIView {
    func addStack<S:Stack>(@ViewBuilder content: () -> S) {
        let stack = content()
    }
}
