//
//  QSBaseTableViewHeaderFooterView.swift
//  TestSwift
//
//  Created by Song on 2018/7/3.
//  Copyright © 2018年 Song. All rights reserved.
//

import UIKit

open class QSBaseTableViewHeaderFooterView: UITableViewHeaderFooterView {
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        qs_setupSubViews()
        qs_binding()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension QSBaseTableViewHeaderFooterView: QSBaseViewProtocol {
    public func qs_setupSubViews() {
    }
    
    public func qs_binding() {
    }
}
