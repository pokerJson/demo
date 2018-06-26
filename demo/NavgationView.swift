//
//  NavgationView.swift
//  demo
//
//  Created by dzc on 2018/6/22.
//  Copyright © 2018年 dyy. All rights reserved.
//

import UIKit

class NavgationView: UIView {

    //MARK:block 传递一个字符串
    //闭包 相当于oc中的block typealias相当于oc中的typedef
    typealias topBlock = (_ _text:String)->() //同下
    typealias rightBlock = ()->()
    /*
        //1
        typealias topBlock2 = (_ _name:String)->Void
        //2
        var top_block:((_ _text:String)->())!

     */
    var top_Blcok:topBlock?
    var right_Block:rightBlock?
    
    
    //MARK:生命变量属性 ?可选类型 可以传nil ;;;;;如果是!的话传nil就会crash
    var backBT:UIButton?
    var titleLabe :UILabel?
    var rightBT:UIButton?
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
        backgroundColor = UIColor.white
        isUserInteractionEnabled = true
        addViews()
        
        
    }
    func addViews() {
        //
        backBT = UIButton()
        backBT?.setBackgroundImage(UIImage.init(named: "login_icon_back"), for: .normal)
        backBT?.addTarget(self, action: #selector(click), for:.touchUpInside)
        addSubview(backBT!)
        //
        titleLabe = UILabel()
        titleLabe?.text = "导航"
        titleLabe?.textColor = UIColor.orange
        titleLabe?.font = UIFont.systemFont(ofSize: 16)
        titleLabe?.textAlignment = NSTextAlignment.center
        addSubview(titleLabe!)
        //
        rightBT = UIButton(type: .custom)
        rightBT?.setBackgroundImage(UIImage.init(named: "login_icon_back"), for: .normal)
        rightBT?.addTarget(self, action: #selector(right), for: .touchUpInside)
        addSubview(rightBT!)

    }
    override func layoutSubviews() {
        super.layoutSubviews()
        backBT?.frame = CGRect(x: 20, y: (44-19)/2, width: 10, height: 19)
        titleLabe?.frame = CGRect(x: (KWidth-100)/2, y: 0, width: 100, height: 44)
        rightBT?.frame = CGRect(x: KWidth-30, y: (44-19)/2, width: 10, height: 19)

    }
   @objc func click() {
        print("返回")
//    top_block("swift--block")
    top_Blcok!("swift--block")

    }
    @objc func right(){
        right_Block!()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

