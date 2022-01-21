//
//  ViewController.swift
//  Homework2.3
//
//  Created by Денис Ільницький on 19/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginTextField: UITextField!
    
    private let login = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcome = segue.destination as? WelcomeViewController else { return }
        welcome.user = login
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func helpRememberLogin() {
        alert(title: "Oops!", message: "Your login is User😉", style: .alert)
    }
    
    
    @IBAction func helpRememberPassword() {
        alert(title: "Oops!", message: "Your password is Password😉", style: .alert)
    }
    
    @IBAction func logIn() {
        if loginTextField.text != login || passwordTextField.text != password {
            alert(title: "Invalid Login or Password", message: "Please, enter correct Login or Password", style: .alert)
            passwordTextField.text = ""
        }
    }
    
    
    
    private func alert(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true)
}
}
