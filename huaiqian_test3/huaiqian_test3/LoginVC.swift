//
//  LoginVC.swift
//  huaiqian_test3
//
//  Created by Qian Huai on 2022/7/28.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "success",
           let destination = segue.destination as? SuccessVC {  //类型转换
            
                destination.text = "登录成功"
            }
        
    }
    //跳转是否执行
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "success"{
            let username = usernameTextField.text ?? ""
            if username.isEmpty {
                errorLabel.text = "请输入用户名"
                return false
            }
            let password = passwordTextField.text ?? ""
            if password.isEmpty {
                errorLabel.text = "请输入密码"
                return false
            }
            errorLabel.text = nil
        }
        return true
    }

}

