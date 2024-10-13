//
//  FollowersViewController.swift
//  GitHubFollowers
//
//  Created by Mohamad Farhan on 06/10/24.
//

import UIKit

class FollowersViewController: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: userName, page: 1) { result in
            
            switch result {
            case let .success(followers):
                print("Followers.count = \(followers.count)")
                print(followers)
            case let .failure(error):
                self.presentGFAlertOnMainThread(title: "Bad Stuff", message: error.rawValue, buttonTitle: "Ok")
                
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }
}
