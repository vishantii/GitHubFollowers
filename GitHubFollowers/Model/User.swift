//
//  User.swift
//  GitHubFollowers
//
//  Created by Mohamad Farhan on 07/10/24.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGist: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createAt: String
}
