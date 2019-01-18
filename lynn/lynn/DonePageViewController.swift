//
//  DonePageViewController.swift
//  lynn
//
//  Created by mac on 2019/1/17.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DonePageViewController: UIViewController {
    var label1 = UILabel(frame: CGRect(x: 100, y: 70, width: 200, height:50))
    var button1 = UIButton(frame: CGRect(x:100, y:170, width:200, height:60))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = NSLocalizedString("homepage", comment: "")
        self.view.backgroundColor = UIColor.gray
        self.addLabel()
        self.addBtn()
    }
    
    func addLabel() {
        label1.text = NSLocalizedString("label1", comment: "")
        //label1.backgroundColor = UIColor.yellow
        label1.textColor = UIColor.white
        self.view.addSubview(label1)
    }
    func addBtn() {
        button1.setTitle(NSLocalizedString("clickToBack", comment: ""), for: .normal)
        button1.setTitleColor(UIColor.white, for: .normal)
        button1.backgroundColor = UIColor.red
        button1.layer.masksToBounds = true
        button1.layer.cornerRadius = 5.0
        
        button1.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        self.view.addSubview(button1)
    }
    
    @objc func goBack(){
        print("gogogo")
        dismiss(animated: true, completion: nil)
    }
    
}
