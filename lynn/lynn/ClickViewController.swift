//
//  ClickViewController.swift
//  lynn
//
//  Created by mac on 2019/1/17.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ClickViewController: UIViewController {
    var label1 = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height:50))
    var button1 = UIButton(frame: CGRect(x:100, y:170, width:200, height:60))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = NSLocalizedString("homepage", comment: "")
        self.view.backgroundColor = UIColor.darkGray
        self.addLabel()
    }
    
    func addLabel() {
        label1.text = NSLocalizedString("tableCellClick", comment: "")
        //label1.backgroundColor = UIColor.yellow
        label1.textColor = UIColor.white
        self.view.addSubview(label1)
    }
    
    
}

