//
//  QSBaseView.swift
//  TestSwift
//
//  Created by Song on 2018/7/3.
//  Copyright © 2018年 Song. All rights reserved.
//

import UIKit

open class QSBaseView: UIView, QSBaseViewProtocol {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        qs_layoutSubViews()
        qs_dataBinding()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - QSBaseViewProtocol
    open func qs_layoutSubViews() {
    }
    
    open func qs_dataBinding() {
    }
}
