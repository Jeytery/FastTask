//
//  Design.swift
//  FastTask
//
//  Created by Jeytery on 4/2/21.
//  Copyright © 2021 Epsillent. All rights reserved.
//

import UIKit

class Design {
    
    public static func blueButton(_ button: inout UIButton) {
        button.backgroundColor = Colors.blue
        button.layer.cornerRadius = 5
        button.setTitleColor(.white, for: .normal)
    }
    
}
