//
//  Posts.swift
//  API manager
//
//  Created by Игорь Островский on 16.10.2022.
//

import Foundation
// MARK: - Post
struct Post: Codable {
    let userID, id: Int?
    let title, body: String?

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias Posts = [Post]
