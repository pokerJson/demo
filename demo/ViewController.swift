//
//  ViewController.swift
//  demo
//
//  Created by dzc on 2018/6/22.
//  Copyright © 2018年 dyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }
    //MARK:viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "首页"
        
        //创建view
        creatViews()
        
    }
    
    func creatViews() {
        //1
        let navView = NavgationView(frame: CGRect(x: 0, y: kStatusHeight, width: KWidth, height: 44))
        //MARK:block传值接收
        navView.top_Blcok = {(_text:String)->() in
            print(_text)
        }
        navView.right_Block = {()->() in
            let next = NextViewController()
            self.navigationController?.pushViewController(next, animated: true)
            
        }
        view.addSubview(navView)
        //2
        view.addSubview(tableview)
    }
    //这是标签 类似oc中的#pragram mark
    //MARK: 懒加载
    lazy var tableview:UITableView={
        let tabV = UITableView()
        tabV.frame = CGRect(x: 0, y: kStatusHeight+44, width: KWidth, height: KHeight-kStatusHeight-44)
        tabV.backgroundColor = UIColor.red
        tabV.layer.borderColor = UIColor.green.cgColor
        tabV.layer.borderWidth = 5
        tabV.layer.cornerRadius = 10
        print(tabV.name)
        tabV.setBackColor()

        return tabV
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

//MARK:扩展extension写在类的外面ViewController外面
//MARK:给UITableView加扩展(添加了属性和方法)
extension UITableView{
    var name:String{
        return "ss"
    }
    func setBackColor(){
        self.backgroundColor = UIColor.orange
    }
}
