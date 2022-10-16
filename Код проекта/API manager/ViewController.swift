//
//  ViewController.swift
//  API manager
//
//  Created by Игорь Островский on 14.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        ApiManager.shared.getUsrs { users in
            print(users.count)
        }
        ApiManager.shared.getPosts { posts in
            // do something with posts
        }
        ApiManager.shared.getAlbums { albums in
            // do something with albums
        }
        ApiManagerClass.shared.getUsers { <#Users#> in
            <#code#>
        }
    }


}

