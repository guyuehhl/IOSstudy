//
//  ViewController.swift
//  lynn
//
//  Created by mac on 2019/1/11.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var tbView = UITableView()
    /*var dataArr = [[("钱包","xmas")],
                   [("收藏","xmas"),("相册","xmas"),("卡包","xmas"),("表情","xmas")],
                   [("设置","xmas")]]*/
    var dataArr = [[(NSLocalizedString("wallet", comment: ""),"xmas")],
                   [
                        (NSLocalizedString("fav", comment: ""),"xmas"),
                        (NSLocalizedString("pic", comment: ""),"xmas"),
                        (NSLocalizedString("card", comment: ""),"xmas"),
                        (NSLocalizedString("exp", comment: ""),"xmas")],
                   [(NSLocalizedString("settings", comment: ""),"xmas")]]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //tbView = UITableView(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        tbView = UITableView(frame: UIScreen.main.bounds, style: UITableView.Style.grouped)
        tbView.dataSource = self
        tbView.delegate = self
        self.view.addSubview(tbView)
        
        UINavigationBar.appearance().barTintColor = UIColor.white
        navigationController?.navigationBar.barStyle = UIBarStyle.default
        self.navigationItem.title = NSLocalizedString("userInfo", comment: "")
        
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: NSLocalizedString("done", comment: ""), target: self, action: .done, action:@Selecter(donePage()))

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("done", comment: ""), style: UIBarButtonItem.Style.plain, target: self, action: #selector(donePage))
        //navigationController?.navigationBar.barStyle = UIBarStyle.default
        tbView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
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
        let cellID = "cell";
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellID)
        let cellImage = UIImage(named: dataArr[indexPath.section][indexPath.row].1)
        cell.imageView?.image = cellImage
        cell.textLabel?.text = dataArr[indexPath.section][indexPath.row].0
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("click tab")
        navigationController?.pushViewController(ClickViewController(), animated: true)
    }

    @objc func donePage(){
        //present(DonePageViewController, animated: true, completion: nil)
        print("1234")
        present(DonePageViewController(), animated: true, completion: nil)
    }
    //present(Fourviewcontroller90.)
//UITableViewCell.CellStyle.subtitle
}

