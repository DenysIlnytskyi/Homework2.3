//
//  UserInfoViewController.swift
//  Homework2.3
//
//  Created by Денис Ільницький on 26/01/2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName


}
}
