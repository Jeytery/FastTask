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
        (desksCollectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.scrollDirection = .horizontal
        self.title = localize(id: DESKS_VC_TITLE_LABEL)   
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

