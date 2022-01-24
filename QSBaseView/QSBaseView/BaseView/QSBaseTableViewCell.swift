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
            var frame = separatorLineView.frame
            frame.origin.x = separatorLeftMargin
            frame.size.width = UIScreen.main.bounds.size.width - separatorLeftMargin - separatorRightMargin
            separatorLineView.frame = frame
        }
    }
    
    /// 分隔线右边距
    public var separatorRightMargin: CGFloat = 0.0 {
        didSet {
            var frame = separatorLineView.frame
            frame.size.width = UIScreen.main.bounds.size.width - separatorLeftMargin - separatorRightMargin
            separatorLineView.frame = frame
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
            var frame = separatorLineView.frame
            frame.size.height = separatorHeight
            separatorLineView.frame = frame
        }
    }
    
    /// 是否隐藏分隔线
    public var isHiddenSeparator: Bool = true {
        didSet {
            if separatorLineView.superview == nil {
                contentView.addSubview(separatorLineView)
            }
            separatorLineView.isHidden = isHiddenSeparator
        }
    }
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        qs_setupSubViews()
        qs_bind()
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
    
    open func qs_bind() {
    }
}
