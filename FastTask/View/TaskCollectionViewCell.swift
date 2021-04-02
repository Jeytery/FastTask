//
//  TaskCollectionViewCell.swift
//  FastTask
//
//  Created by Jeytery on 4/2/21.
//  Copyright © 2021 Epsillent. All rights reserved.
//

import UIKit

class TaskCollectionViewCell:
    UICollectionViewCell 
{
    //MARK: - vars
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    public static let identifier = "TaskCollectionViewCell"
    
    //MARK: - iternal functions
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
