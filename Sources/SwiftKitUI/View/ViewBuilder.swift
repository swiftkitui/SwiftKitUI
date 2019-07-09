//
//  ViewBuilder.swift
//  
//
//  Created by 张行 on 2019/7/8.
//

@_functionBuilder
public struct ViewBuilder {
    static public func buildBlock() -> EmptyView {
        return EmptyView()
    }
    static public func buildBlock<Content:ViewRoot>(_ content:Content) -> Content {
        return content
    }
}

extension ViewBuilder {
    static public func buildIf<Content:ViewRoot>(_ content:Content?) -> Content {
        if let _content = content {
            return _content
        }
        return EmptyView() as! Content
    }
    
    static public func buildEither<TrueView:ViewRoot, FalseView:ViewRoot>(trueView:TrueView) -> EirtherView<TrueView,FalseView> {
        return EirtherView(trueView: trueView)
    }
    
    static public func buildEirther<TrueView:ViewRoot, FalseView:ViewRoot>(falseView:FalseView) -> EirtherView<TrueView,FalseView> {
        return EirtherView(falseView: falseView)
    }
}

extension ViewBuilder {
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot>(_ v0:V0, _ v1:V1) -> TupleView2<V0,V1> {
        return TupleView2(v0, v1)
    }
    
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot, V2:ViewRoot>(_ v0:V0, _ v1:V1, _ v2:V2) -> TupleView3<V0,V1,V2> {
        return TupleView3(v0, v1, v2)
    }
    
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot, V2:ViewRoot, V3:ViewRoot>(_ v0:V0, _ v1:V1, _ v2:V2, _ v3:V3) -> TupleView4<V0,V1,V2,V3> {
        return TupleView4(v0, v1, v2, v3)
    }
    
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot, V2:ViewRoot, V3:ViewRoot, V4:ViewRoot>(_ v0:V0, _ v1:V1, _ v2:V2, _ v3:V3, _ v4:V4) -> TupleView5<V0,V1,V2,V3,V4> {
        return TupleView5(v0, v1, v2, v3, v4)
    }
    
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot, V2:ViewRoot, V3:ViewRoot, V4:ViewRoot, V5:ViewRoot>(_ v0:V0, _ v1:V1, _ v2:V2, _ v3:V3, _ v4:V4, _ v5:V5) -> TupleView6<V0,V1,V2,V3,V4,V5> {
        return TupleView6(v0, v1, v2, v3, v4, v5)
    }
    
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot, V2:ViewRoot, V3:ViewRoot, V4:ViewRoot, V5:ViewRoot, V6:ViewRoot>(_ v0:V0, _ v1:V1, _ v2:V2, _ v3:V3, _ v4:V4, _ v5:V5, _ v6:V6) -> TupleView7<V0,V1,V2,V3,V4,V5,V6> {
        return TupleView7(v0, v1, v2, v3, v4, v5, v6)
    }
    
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot, V2:ViewRoot, V3:ViewRoot, V4:ViewRoot, V5:ViewRoot, V6:ViewRoot, V7:ViewRoot>(_ v0:V0, _ v1:V1, _ v2:V2, _ v3:V3, _ v4:V4, _ v5:V5, _ v6:V6, _ v7:V7) -> TupleView8<V0,V1,V2,V3,V4,V5,V6,V7> {
        return TupleView8(v0, v1, v2, v3, v4, v5, v6, v7)
    }
    
    static public func buildBlock<V0:ViewRoot, V1:ViewRoot, V2:ViewRoot, V3:ViewRoot, V4:ViewRoot, V5:ViewRoot, V6:ViewRoot, V7:ViewRoot, V8:ViewRoot>(_ v0:V0, _ v1:V1, _ v2:V2, _ v3:V3, _ v4:V4, _ v5:V5, _ v6:V6, _ v7:V7, _ v8:V8) -> TupleView9<V0,V1,V2,V3,V4,V5,V6,V7,V8> {
        return TupleView9(v0, v1, v2, v3, v4, v5, v6, v7, v8)
    }
}


