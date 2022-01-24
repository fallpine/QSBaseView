//
//  QSBaseViewProtocol.swift
//  TestSwift
//
//  Created by Song on 2018/7/3.
//  Copyright © 2018年 Song. All rights reserved.
//

import Foundation

@objc public protocol QSBaseViewProtocol {
    /// 设置界面
    @objc func qs_setupSubViews()
    /// 数据绑定
    @objc func qs_bind()
}
