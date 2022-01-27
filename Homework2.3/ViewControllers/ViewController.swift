//
//  ViewController.swift
//  Homework2.3
//
//  Created by Денис Ільницький on 19/01/2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginTextField: UITextField!
    
    // MARK: - Private properties
    private let user = User.getUser()
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcome = segue.destination as? WelcomeViewController else { return }
        welcome.user = user
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.user = user
            }
        }
    }
        
  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     //   guard let tabBarController = segue.destination as? UITabBarController else { return }
       // guard let viewControllers = tabBarController.viewControllers else { return }
        
      //  viewControllers.forEach {
        //    if let welcome = $0 as? WelcomeViewController {
          //      welcome.user = user
            //} else if let navigationVC = $0 as? UINavigationController {
              //  let userInfoVC = navigationVC.topViewController
                //userInfoVC.user = user
            
    
    // MARK: IBAction
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
        if loginTextField.text != user.login || passwordTextField.text != user.password {
            alert(title: "Invalid Login or Password", message: "Please, enter correct Login or Password", style: .alert)
            passwordTextField.text = ""
        }
    }
    
    
    // MARK: Private func
    private func alert(title: String, message: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true)
}
}
