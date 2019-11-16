//
//  CollectionViewTwoColumnsGrid.swift
//  CollectionView2ColumnGridprogrammatically
//
//  Created by Hameed Abdullah on 11/15/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit

class CollectionViewTwoColumnsGrid: UICollectionViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        navigationItem.title = "Two Columns Grid"
        
    }
    
    
    
    //we need this init when creating a collectionView Programmatically otherwise app will crash
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
