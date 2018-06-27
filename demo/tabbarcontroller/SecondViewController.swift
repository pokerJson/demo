//
//  SecondViewController.swift
//  demo
//
//  Created by dzc on 2018/6/26.
//  Copyright © 2018年 dyy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    var textFiled:UITextField?
    var textView:UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        
        //1
        textFiled = UITextField(frame: CGRect(x: 30, y: 100, width: 200, height: 30))
        textFiled?.backgroundColor = UIColor.white
        textFiled?.placeholder = "占位符而已"
        textFiled?.borderStyle = UITextBorderStyle.roundedRect
        textFiled?.textColor = UIColor.red
        textFiled?.tintColor = UIColor.green
        textFiled?.keyboardType = UIKeyboardType.alphabet
        textFiled?.returnKeyType = UIReturnKeyType.done
        textFiled?.delegate = self
        view.addSubview(textFiled!)
    
        //tap
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapclick))
        view.addGestureRecognizer(tap)
        
        
        //2
        textView = UITextView(frame: CGRect(x: 10, y: 200, width: 200, height: 40))
        textView?.backgroundColor = UIColor.white
        textView?.textColor = UIColor.green
        view.addSubview(textView!)
    }
    @objc func tapclick(){
        print("点击屏幕---键盘消失")
        textFiled?.resignFirstResponder()
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("将要开始编辑")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("已经开始编辑")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("将要结束编辑")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("已经结束编辑")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("文本输入内容将要发生变化（每次输入都会调用）-->"+textField.text!+"-->"+string)
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("将要清除输入内容，返回值是是否要清除掉内容")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("将要按下Return按钮，返回值是是否结束输入（是否失去焦点）")
        return true
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
