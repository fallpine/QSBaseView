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
        myView.frame = CGRect.init(x: 100.0, y: 100.0, width: 100.0, height: 100.0)
    }

    private lazy var myView: QSMyView = {
        let view = QSMyView.init(frame: .zero)
        return view
    }()
}

