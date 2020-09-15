//
//  ViewController.swift
//  Modularity1
//
//  Created by Narasannagari Krishna Prakash on 13/09/20.
//  Copyright © 2020 Narasannagari Krishna Prakash. All rights reserved.
//

import UIKit

open class ChildHomeViewController: UIViewController {
    @IBOutlet fileprivate weak var usersTableView: UITableView!
    fileprivate var usersViewModel = UsersViewModel()

    open override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usersTableView.tableFooterView = UIView()
        getUsersData()
    }
    /// Get user data
    open func getUsersData() {
        
        usersViewModel.callUserDataData { (error) in
            if (error != nil) {
                self.showMessageWith(title: "Error", message: "Error while fetching users list")
                return
            }
            
            self.usersTableView.reloadData()
        }
    }
    /// Method user for displying alert
    ///
    /// - Parameters:
    ///   - title: alert title
    ///   - message: alert message
    func showMessageWith(title:String, message:String) {
        
        // create the alert
        let alert = UIAlertController(title: title, message:message, preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}

extension ChildHomeViewController:UITableViewDelegate,UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "UsersTableViewCell", for: indexPath) as? UsersTableViewCell {
            let user = usersViewModel.usersData[indexPath.row]
           cell.user = user
            return cell
        }
        return UITableViewCell()
    }
    private func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    private func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return usersViewModel.usersData.count
    }
}

