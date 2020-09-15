//
//  UsersModel.swift
//  Modularity1
//
//  Created by Narasannagari Krishna Prakash on 13/09/20.
//  Copyright © 2020 Narasannagari Krishna Prakash. All rights reserved.
//

import Foundation
// MARK: - Users
struct UsersModel: Codable {
    let results: [Result]?
    let info: Info?
}

// MARK: - Info
struct Info: Codable {
    let seed: String?
    let results, page: Int?
    let version: String?
}

// MARK: - Result
struct Result: Codable {
    let name: Name?
    let email: String?
    let phone, cell: String?
    let id: ID?
    let picture: Picture?
}
// MARK: - ID
struct ID: Codable {
    let name: String?
    let value: String?
}

// MARK: - Name
struct Name: Codable {
    let title: String?
    let first, last: String?
}

// MARK: - Picture
struct Picture: Codable {
    let large, medium, thumbnail: String?
}
