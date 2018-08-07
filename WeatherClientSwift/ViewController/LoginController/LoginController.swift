//
//  LoginController.swift
//  weatherClientSwift
//
//  Created by Maxim on 05/08/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

import UIKit
import KeychainSwift

class LoginController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.password.isSecureTextEntry = true
        self.login.layer.cornerRadius = 10
        self.password.layer.cornerRadius = 10
        self.loginButton.layer.cornerRadius = 10
        self.password.delegate = self
        self.login.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func loginAction(_ sender: Any) {
        let keychain = KeychainSwift()
        if let token = keychain.get("token") {
            if token == self.password.text {
               performSegue(withIdentifier: "login", sender: nil)
            } else {
                let alert = UIAlertController(title: "Ошибка", message: "Неверный пароль!", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ок", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        } else {
            keychain.set(self.password.text!, forKey: "token")
        }
    }
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }*/
}
