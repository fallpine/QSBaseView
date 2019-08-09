//
//  ViewController.swift
//  QSBaseView
//
//  Created by Song on 2019/8/9.
//  Copyright © 2019 Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(myView)
        myView.snp.makeConstraints { (make) in
            make.top.equalTo(100.0)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(80.0)
        }
    }

    private lazy var myView: QSMyView = {
        let view = QSMyView.init(frame: .zero)
        return view
    }()
}

