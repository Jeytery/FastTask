//
//  DeskCollectionViewCell.swift
//  FastTask
//
//  Created by Jeytery on 4/2/21.
//  Copyright © 2021 Epsillent. All rights reserved.
//

import UIKit

class DeskCollectionViewCell:
    UICollectionViewCell,
    UICollectionViewDataSource,
    UICollectionViewDelegate,
    UICollectionViewDelegateFlowLayout
{    
    //MARK: - vars
    @IBOutlet weak var tasksCollectionView: UICollectionView!
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var shadowView: UIView!
    
    public static let identifier = "DeskCollectionViewCell"
    
    public var desk = Desk(name: "", tasks: [])
    
    private let cellHeight: CGFloat = 100
    
        
    //MARK: - iternal functions
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int)
        -> Int
    {
        return desk.tasks.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath)
        -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: TaskCollectionViewCell.identifier,
            for: indexPath) as! TaskCollectionViewCell
        cell.titleLabel.text = desk.tasks[indexPath.row].text
        cell.mainView.backgroundColor = Colors.lightGray
        cell.colorView.backgroundColor = Colors.purple
        return cell
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath)
        -> CGSize
    {
        return CGSize(width: collectionView.bounds.width, height: cellHeight)
    }

    private func putShadowOnView() {
        shadowView.layer.borderWidth = 0.0
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 3)
        shadowView.layer.shadowRadius = 3.0
        shadowView.layer.shadowOpacity = 0.7
        shadowView.layer.masksToBounds = false
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tasksCollectionView.delegate = self
        tasksCollectionView.dataSource = self
        
        tasksCollectionView.register(UINib(
            nibName: "TaskCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: TaskCollectionViewCell.identifier
        )
        putShadowOnView()
    }

}
