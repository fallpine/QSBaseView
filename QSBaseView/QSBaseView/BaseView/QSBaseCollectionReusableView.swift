//
//  QSBaseCollectionReusableView.swift
//  BeeBoxClient
//
//  Created by Song on 2019/10/24.
//  Copyright © 2019 Song. All rights reserved.
//

import UIKit

open class QSBaseCollectionReusableView: UICollectionReusableView, QSBaseViewProtocol {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        qs_setupSubViews()
        qs_bind()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - QSBaseViewProtocol
    open func qs_setupSubViews() {
    }
    
    open func qs_bind() {
    }
}
