//
//  AppDelegate.swift
//  FastTask
//
//  Created by user on 3/24/21.
//  Copyright © 2021 Epsillent. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let data = [
        Desk(name: "fafa", tasks: [
            Task(text: "qdqdq"),
            Task(text: "2eee"),
            Task(text: "dd"),
            Task(text: "qdqdq"),
            Task(text: "2eee"),
            Task(text: "dd"),
            Task(text: "qdqdq"),
            Task(text: "2eee"),
            Task(text: "dd"),
            Task(text: "qdqdq"),
            Task(text: "2eee"),
            Task(text: "dd"),
            Task(text: "11")
        ]),
    
        Desk(name: "fafa", tasks: [
            Task(text: "222222"),
            Task(text: "22222"),
            Task(text: "22222"),
            Task(text: "12222221")
        ]),
        
        Desk(name: "fafa", tasks: [
            Task(text: "33333"),
            Task(text: "2e333333ee"),
            Task(text: "d3333333333d"),
            Task(text: "133333333331")
        ])
    ]

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        let vc = DesksViewController(desks: data)
        
        let mainNVC = MainNavigationController(rootViewController: vc)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainNVC
        window?.makeKeyAndVisible()
        setAppLang()
        return true
    }

}

