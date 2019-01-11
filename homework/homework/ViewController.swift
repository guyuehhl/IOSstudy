//
//  ViewController.swift
//  homework
//
//  Created by mac on 2019/1/9.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var dataArr = [[("钱包","apple")],
                   [("收藏","grapes"),("相册","lemon"),("卡包","mango"),("表情","orange")],
                   [("设置","pear")]]

    //var dataArr = ["1","2","3"]
    @IBOutlet weak var tbTiew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tbTiew.delegate = self
        self.tbTiew.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //return 3
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //return 20
        if section == 0 {
            return 40
        }
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cellID = "cell"
        let cell = self.tbTiew.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
       
        //cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        let image = UIImage(named: dataArr[indexPath.section][indexPath.row].1)
        cell.imageView?.image = image
        cell.textLabel?.text = dataArr[indexPath.section][indexPath.row].0
        
        
        //cell.textLabel?.text = "123"
        return cell
    }
    
  
    

}

