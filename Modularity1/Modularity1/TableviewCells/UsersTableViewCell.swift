//
//  UsersTableViewCell.swift
//  Modularity1
//
//  Created by Narasannagari Krishna Prakash on 13/09/20.
//  Copyright © 2020 Narasannagari Krishna Prakash. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var user: Result? = nil {

        didSet {
            setValues()
        }
        
    }
    
    func setValues() {
        userNameLabel.text = (user?.name?.first ?? "") + " " + (user?.name?.last ?? "")
        emailLabel.text = user?.email
    }
}
