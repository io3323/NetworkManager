//
//  Albums.swift
//  API manager
//
//  Created by Игорь Островский on 16.10.2022.
//

import Foundation
// MARK: - Album
struct Album: Codable {
    let userID, id: Int?
    let title: String?

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title
    }
}

typealias Albums = [Album]
