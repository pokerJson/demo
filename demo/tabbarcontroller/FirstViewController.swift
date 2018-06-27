//
//  FirstViewController.swift
//  demo
//
//  Created by dzc on 2018/6/26.
//  Copyright © 2018年 dyy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //全局变量 在viewDidLoad外面的
    var textLabel:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.purple

        //uialbel
        textLabel = UILabel.init()
        textLabel?.frame = CGRect(x: 50, y: 100, width:KWidth-100, height: 30)
        textLabel?.textColor = UIColor.white
        textLabel?.numberOfLines = 0
        textLabel?.backgroundColor = UIColor .black
        textLabel?.text = "这是一个测试的text内容是,什么的意思呢,景县居然有高铁了,哈哈,why?what,哈哈哈.it is a unbelievable message,恭喜我大景县,哈哈哈哈或,啦啦啦啦啦绿,希望时候同北京啊 直达多好呢单元哈哈哈哈但愿,垃圾哈登居然是2018年mvp,为什么呢,他那么铁那么多失误还特么软季后赛被人家安在地板上摩擦"
        textLabel?.textAlignment = NSTextAlignment.left
        view.addSubview(textLabel!)
        
        //switch
        let wich = UISwitch()
        wich.frame = CGRect(x: 100, y: 300, width: 100, height: 30)
        wich.setOn(true, animated: true)
        wich.tintColor = UIColor.red
        wich.onTintColor = UIColor.green
        wich.thumbTintColor = UIColor.orange
        wich.addTarget(self, action: #selector(changevalue), for: UIControlEvents.valueChanged)
        view.addSubview(wich)
    
    
    }
    override func viewDidLayoutSubviews() {
        //计算text的高度和宽度
        let textSize = getTextSizeWithString(text:(textLabel?.text)!,font:UIFont.boldSystemFont(ofSize: 14),size:CGSize(width: 200.0, height: CGFloat(MAXFLOAT)))
        print(textSize.height)
        textLabel?.frame = CGRect(x: 50, y: 100, width: KWidth-100, height:textSize.height)
    }
    //MARK: 获取字符串的高度
    func getTextSizeWithString(text:String,font:UIFont,size:CGSize) -> CGRect {
        let attributies = [NSAttributedStringKey.font:font]
        let opertion = NSStringDrawingOptions.usesLineFragmentOrigin
        let rect = text.boundingRect(with: size, options: opertion, attributes: attributies, context: nil)
        return rect
    }
    //MARK:UISwitch切换事件
    @objc func changevalue(uiswich:UISwitch){
        print(uiswich.isOn)
        let test = TestViewController()
        navigationController?.pushViewController(test, animated: true)
        
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
