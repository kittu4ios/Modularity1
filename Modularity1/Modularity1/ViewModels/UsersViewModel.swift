//
//  UsersViewModel.swift
//  Modularity1
//
//  Created by Narasannagari Krishna Prakash on 13/09/20.
//  Copyright © 2020 Narasannagari Krishna Prakash. All rights reserved.
//

import Foundation

class UsersViewModel {
    
    fileprivate(set) var usersData = [Result]()
    
    /// User data API call
    ///
    /// - Parameters:
    ///   - limit: Int value for users limit
    ///   - completion: returns error object
    func callUserDataData(limit: Int = 10,completion: @escaping (_ error:Error?) -> Void) {
        
        NetworkManager.sharedInstance.userDataAPI(paramsString: prepareURLInput(limit:limit), completion: { (response, error) in
            if let response = response {
                self.usersData = response.results ?? []
                completion(nil)
            } else {
                completion(error)
            }
        })
    }
    private func prepareURLInput(limit: Int) -> String {
        
        let inputString = "results=\(limit)"
        
        return inputString
    }
}
