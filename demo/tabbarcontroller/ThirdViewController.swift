//
//  ThirdViewController.swift
//  demo
//
//  Created by dzc on 2018/6/26.
//  Copyright © 2018年 dyy. All rights reserved.
//

import UIKit

//MARK:遵循代理 sendStringToThirdVCDeleagte 类似oc的样子
class ThirdViewController: UIViewController,sendStringToThirdVCDeleagte {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        //这只是个样例
        let toos = Tools()
        toos.printString()
        
        //创建一个按钮
        let bt = UIButton(type: .custom)
        bt.frame = CGRect(x: 100, y: 100, width: 100, height: 40)
        bt.setTitle("点我跳转页面", for:.normal)
        bt.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(bt)
        bt.addTarget(self, action: #selector(push), for: .touchUpInside)
        

    }
    //MARK:协议方法
    func sendSomeString(str: String) {
        print(str)
    }
    //MARK:push跳转 设置它的代理是自己类似oc
    @objc func push(){
        let protocolVC = ProtocolViewController()
        protocolVC.sendDelegate = self//必须写
        navigationController?.pushViewController(protocolVC, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

//MARK:class 创建一个类 遵循了printSomeString协议 实现它的方法
class Tools: printSomeString {
    func printString() {
        print("遵循协议")
    }
}
