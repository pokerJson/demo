//
//  ProtocolViewController.swift
//  demo
//
//  Created by dzc on 2018/6/27.
//  Copyright © 2018年 dyy. All rights reserved.
//

import UIKit

//MARK:定义一个协议
protocol sendStringToThirdVCDeleagte {
    func sendSomeString(str:String)
}
//
class ProtocolViewController: UIViewController {

    //代理
    var sendDelegate:sendStringToThirdVCDeleagte?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        
        //创建一个按钮
        let bt = UIButton(type: .custom)
        bt.frame = CGRect(x: 100, y: 100, width: 100, height: 40)
        bt.setTitle("点我返回", for:.normal)
        bt.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(bt)
        bt.addTarget(self, action: #selector(pop), for: .touchUpInside)

        
    }
    @objc func pop(){
        sendDelegate?.sendSomeString(str: "我是测试数据用于协议代理")
        navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
