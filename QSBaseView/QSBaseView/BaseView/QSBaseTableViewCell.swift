//
//  QSBaseTableViewCell.swift
//  TestSwift
//
//  Created by Song on 2018/7/3.
//  Copyright © 2018年 Song. All rights reserved.
//

import UIKit

open class QSBaseTableViewCell: UITableViewCell, QSBaseViewProtocol {
    // MARK: - 属性
    /// 分隔线左边距
    public var separatorLeftMargin: CGFloat = 0.0 {
        didSet {
            separatorLeftConstraint.constant = separatorLeftMargin
            contentView.updateConstraints()
        }
    }
    
    /// 分隔线右边距
    public var separatorRightMargin: CGFloat = 0.0 {
        didSet {
            separatorRightConstraint.constant = separatorRightMargin
            contentView.updateConstraints()
        }
    }
    
    /// 分隔线颜色
    public var separatorColor: UIColor = .black {
        didSet {
            separatorLineView.isHidden = false
            separatorLineView.backgroundColor = separatorColor
            separatorLineView.superview?.bringSubviewToFront(separatorLineView)
        }
    }
    
    /// 分隔线高度
    public var separatorHeight: CGFloat = 0.0 {
        didSet {
            separatorHeightConstraint.constant = separatorHeight
            contentView.updateConstraints()
        }
    }
    
    /// 是否隐藏分隔线
    public var isHiddenSeparator: Bool = true {
        didSet {
            separatorLineView.isHidden = isHiddenSeparator
        }
    }
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.frame = CGRect.init(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: 60.0)
        
        contentView.addSubview(separatorLineView)
        let separatorBottom = NSLayoutConstraint.init(item: separatorLineView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1.0, constant: 0.0)
        separatorLeftConstraint = NSLayoutConstraint.init(item: separatorLineView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1.0, constant: 0.0)
        separatorRightConstraint = NSLayoutConstraint.init(item: separatorLineView, attribute: .right, relatedBy: .equal, toItem: contentView, attribute: .right, multiplier: 1.0, constant: 0.0)
        separatorHeightConstraint = NSLayoutConstraint.init(item: separatorLineView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0.0, constant: 1.0 / UIScreen.main.scale)
        contentView.addConstraints([separatorBottom, separatorLeftConstraint, separatorRightConstraint, separatorHeightConstraint])
        
        qs_layoutSubViews()
        qs_dataBinding()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Property
    private var separatorLeftConstraint: NSLayoutConstraint!
    private var separatorRightConstraint: NSLayoutConstraint!
    private var separatorHeightConstraint: NSLayoutConstraint!
    
    // MARK: - 控件
    // 分隔线
    private lazy var separatorLineView: UIView = {
        let view = UIView.init()
        view.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - QSBaseViewProtocol
    open func qs_layoutSubViews() {
    }
    
    open func qs_dataBinding() {
    }
}
