//
//  Utilities.swift
//  Modularity1
//
//  Created by Narasannagari Krishna Prakash on 13/09/20.
//  Copyright © 2020 Narasannagari Krishna Prakash. All rights reserved.
//

import Foundation

struct Utilites {

    static func dataToObject<T>(type: T.Type, from data: Data, completion:@escaping((T?, Error?) -> Void)) where T : Decodable {
        do{
            let dataModel = try JSONDecoder().decode(type, from: data)
            completion(dataModel,nil)
        }
        catch DecodingError.dataCorrupted(let context){
            completion(nil, context.underlyingError)
        }
        catch let err {
            completion(nil, err)
        }
    }

}
