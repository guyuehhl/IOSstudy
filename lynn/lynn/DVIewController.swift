//
//  RootVIewController.swift
//  lynn
//
//  Created by mac on 2019/1/15.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = NSLocalizedString("homePage", comment: "")
        self.view.backgroundColor = UIColor.white
        self.addimage()
    }
    func addimage(){
        let imageView = UIImageView(image: UIImage(named: "pig"))
        self.view.addSubview(imageView) 
    }
    
}
