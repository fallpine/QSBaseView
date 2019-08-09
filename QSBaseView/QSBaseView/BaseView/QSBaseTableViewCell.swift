//
//  QSBaseTableViewCell.swift
//  TestSwift
//
//  Created by Song on 2018/7/3.
//  Copyright © 2018年 Song. All rights reserved.
//

import UIKit
import SnapKit

public class QSBaseTableViewCell: UITableViewCell {
    // MARK: - 属性
    /// 下划线左边距
    var lineLeftMargin: CGFloat = 0.0 {
        didSet {
            self.lineView?.snp.updateConstraints({ (make) in
                make.left.equalTo(lineLeftMargin)
            })
        }
    }
    
    /// 下划线右边距
    var lineRightMargin: CGFloat = 0.0 {
        didSet {
            self.lineView?.snp.updateConstraints({ (make) in
                make.right.equalTo(lineRightMargin)
            })
        }
    }
    
    /// 下划线颜色
    var lineColor: UIColor = .black {
        didSet {
            self.lineView?.backgroundColor = lineColor
        }
    }
    
    /// 是否隐藏下划线
    var isHideSeparatorLine: Bool = true {
        didSet {
            self.lineView?.isHidden = isHideSeparatorLine
        }
    }
    
    // MARK: - 控件
    // 下划线
    var lineView: UIView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        qs_setupSubViews()
        qs_binding()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension QSBaseTableViewCell: QSBaseViewProtocol {
    public func qs_setupSubViews() {
        // lineView
        lineView = UIView.init()
        self.contentView.addSubview(lineView!)
        lineView!.snp.makeConstraints { (make) in
            make.left.bottom.right.equalTo(0.0)
            make.height.equalTo(1.0)
        }
        
        self.selectionStyle = .none
    }
    
    public func qs_binding() {
    }
}
