//
//  QSMyView.swift
//  QSBaseView
//
//  Created by Song on 2019/8/9.
//  Copyright © 2019 Song. All rights reserved.
//

import UIKit

class QSMyView: QSBaseView {
    override func qs_layoutSubViews() {
        self.backgroundColor = .blue
    }
    
    override func qs_dataBinding() {
        print("绑定数据")
    }
}
