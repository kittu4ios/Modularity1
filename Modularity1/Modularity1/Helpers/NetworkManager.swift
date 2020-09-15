//
//  NetworkManager.swift
//  Modularity1
//
//  Created by Narasannagari Krishna Prakash on 13/09/20.
//  Copyright © 2020 Narasannagari Krishna Prakash. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class NetworkManager {
    static let sharedInstance = NetworkManager()
    
    private init() {
        
    }
    
    func userDataAPI(paramsString:String,completion: @escaping ((UsersModel?, Error?) -> Void)) {
        let userDataURLString = Constants.usersUrl+paramsString
        guard let usersListURL = URL(string: userDataURLString) else {
            completion(nil, NSError(domain: "", code: -1, userInfo: [kCFErrorLocalizedDescriptionKey as String : NSLocalizedString("Error in creating users URL.", comment:"Error in creating users URL.")]))
            return
        }
        AF.request(usersListURL, method: .get, parameters: nil, encoding:  URLEncoding.default, headers: nil).response { (response: DataResponse) in
            if let error = response.error {
                return  completion(nil,error)
            } else {
                Utilites.dataToObject(type: UsersModel.self, from: response.data!, completion: completion)
            }
        }
    }
}

