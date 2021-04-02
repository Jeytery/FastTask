//
//  MainNavigationController.swift
//  FastTask
//
//  Created by user on 3/24/21.
//  Copyright © 2021 Epsillent. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 11.0, *) {
            self.navigationBar.prefersLargeTitles = true
        }
    }

}
