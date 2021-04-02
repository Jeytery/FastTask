//
//  DesksViewController.swift
//  FastTask
//
//  Created by Jeytery on 4/2/21.
//  Copyright © 2021 Epsillent. All rights reserved.
//

import UIKit

class DesksViewController:
    UIViewController,
    UICollectionViewDataSource,
    UICollectionViewDelegate,
    UICollectionViewDelegateFlowLayout
{
    //MARK: - vars
    @IBOutlet weak var desksCollectionView: UICollectionView!

    @IBOutlet weak var taskButton: UIButton!
    
    public var desks: [Desk] = []
    
    //MARK: - iternal functions
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int)
        -> Int
    {
        return desks.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath)
        -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: DeskCollectionViewCell.identifier,
            for: indexPath) as! DeskCollectionViewCell
        cell.desk = desks[indexPath.row]
        return cell
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath)
        -> CGSize
    {
        return (CGSize(
            width: UIScreen.main.bounds.width,
            height: collectionView.bounds.height
        ))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        desksCollectionView.delegate = self
        desksCollectionView.dataSource = self
        desksCollectionView.register(UINib(
            nibName: "DeskCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: DeskCollectionViewCell.identifier)
        taskButton.setTitle(localize(id: TASK_BUTTON_LABEL), for: .normal)
        Design.blueButton(&taskButton)
        self.title = localize(id: DESKS_VC_TITLE_LABEL)   
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int)
        -> UIEdgeInsets
    {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int)
        -> CGFloat
    {
        return 0
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int)
        -> CGFloat
    {
        return 0
    }
    
    //MARK: - public functions
    public init(desks: [Desk]) {
        self.desks = desks
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

