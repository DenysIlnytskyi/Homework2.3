//
//  WelcomeViewController.swift
//  Homework2.3
//
//  Created by Денис Ільницький on 21/01/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeUser: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = "Welcome, \(user.person.fullName)!"
       
    }
    
    
}
