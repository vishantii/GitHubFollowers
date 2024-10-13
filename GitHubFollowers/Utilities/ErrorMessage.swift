//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Mohamad Farhan on 07/10/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again!"
    case unableToComplete = "Unable to complete your request. Please check your internet!"
    case invalidResponse = "Invalid response from the server. Please try again!!"
    case invalidData = "The data received from the server is invalid. Please try again!"
}
