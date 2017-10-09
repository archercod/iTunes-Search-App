//
//  ViewController.swift
//  iTunes Search App
//
//  Created by Marcin Pietrzak on 06.10.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchEndpoint = Itunes.search(type: "taylor swift", media: .music(entity: .musicArtist, attribute: .artistTerm))
        print(searchEndpoint.request)
    }
    
}

