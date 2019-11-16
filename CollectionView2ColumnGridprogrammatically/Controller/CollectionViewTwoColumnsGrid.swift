//
//  CollectionViewTwoColumnsGrid.swift
//  CollectionView2ColumnGridprogrammatically
//
//  Created by Hameed Abdullah on 11/15/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit

class CollectionViewTwoColumnsGrid: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let cellId = "cellId"
    
    var millionaires = [Millionaire]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         navigationItem.title = "Two Columns Grid"
        
        setupCollectionView()
        millionairesList()
    }
    
    
    fileprivate func setupCollectionView() {
        collectionView.backgroundColor = .white
        collectionView.register(MillionairesCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func millionairesList() {
        
           let obj = Millionaire(profileImage: "j", name: "Jeff Bezos", netWorth: "Jeff Net worth: $125 billion")
             let obj1 = Millionaire(profileImage: "b", name: "Bill Gates", netWorth: "Net worth: $89.5 billion")
             let obj2 =  Millionaire(profileImage: "w", name: "Warren Buffett", netWorth: "Net worth: $78.7 billion")

             let obj3 = Millionaire(profileImage: "ber", name: "Bernard Arnault", netWorth: "Net worth: $66.1 billion")
             let obj4 = Millionaire(profileImage: "am", name: "Amancio Ortega", netWorth: "Net worth: $57.7 billion")
             let obj5 = Millionaire(profileImage: "mark", name: "Mark Zuckerberg", netWorth: "Net worth: $52.3 billion")

             millionaires.append(obj)
             millionaires.append(obj1)
             millionaires.append(obj2)
             millionaires.append(obj3)
             millionaires.append(obj4)
             millionaires.append(obj5)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return millionaires.count
    }
    

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MillionairesCollectionViewCell
        
        let obj = millionaires[indexPath.item]
        cell.imageView.image = UIImage(named: obj.profileImage)
        cell.nameLabel.text = obj.name
        cell.netWorthLabel.text = obj.netWorth
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (view.frame.width - 3 * 16) / 2
        return .init(width: width, height: width + 46)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    //we need this init when creating a collectionView Programmatically otherwise app will crash
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
