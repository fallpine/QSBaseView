//
//  QSBaseTableViewCell.swift
//  TestSwift
//
//  Created by Song on 2018/7/3.
//  Copyright © 2018年 Song. All rights reserved.
//

import UIKit
import SnapKit

open class QSBaseTableViewCell: UITableViewCell, QSBaseViewProtocol {
    // MARK: - 属性
    /// 分隔线左边距
    public var separatorLineLeftMargin: CGFloat = 0.0 {
        didSet {
            separatorLineView.snp.updateConstraints({ (make) in
                make.left.equalTo(separatorLineLeftMargin)
            })
        }
    }
    
    /// 分隔线右边距
    public var separatorLineRightMargin: CGFloat = 0.0 {
        didSet {
            separatorLineView.snp.updateConstraints({ (make) in
                make.right.equalTo(separatorLineRightMargin)
            })
        }
    }
    
    /// 分隔线颜色
    public var separatorLineColor: UIColor = .black {
        didSet {
            separatorLineView.isHidden = false
            separatorLineView.backgroundColor = separatorLineColor
            separatorLineView.superview?.bringSubviewToFront(separatorLineView)
        }
    }
    
    /// 分隔线高度
    public var separatorLineHeight: CGFloat = 0.0 {
        didSet {
            separatorLineView.snp.updateConstraints({ (make) in
                make.height.equalTo(separatorLineHeight)
            })
        }
    }
    
    /// 是否隐藏分隔线
    public var isHiddenSeparatorLine: Bool = true {
        didSet {
            separatorLineView.isHidden = isHiddenSeparatorLine
        }
    }
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(separatorLineView)
        separatorLineView.snp.makeConstraints { (make) in
            make.left.bottom.right.equalTo(0.0)
            make.height.equalTo(1.0)
        }
        
        qs_setupSubViews()
        qs_binding()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 控件
    // 分隔线
    private lazy var separatorLineView: UIView = {
        let view = UIView.init()
        view.isHidden = true
        return view
    }()
    
    // MARK: - QSBaseViewProtocol
    open func qs_setupSubViews() {
    }
    
    open func qs_binding() {
    }
}
