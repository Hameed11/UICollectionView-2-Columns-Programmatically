//
//  MillionairesCollectionViewCell.swift
//  CollectionView2ColumnGridprogrammatically
//
//  Created by Hameed Abdullah on 11/15/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit

class MillionairesCollectionViewCell: UICollectionViewCell {
    
    var imageView = UIImageView(image: #imageLiteral(resourceName: "b"))
    let nameLabel = UILabel()
    let netWorthLabel = UILabel()
    
    func styleViews() {
          nameLabel.text = "Steve Jobs"
          nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
          netWorthLabel.text = "$1 Trillion"
          netWorthLabel.numberOfLines = 0
          netWorthLabel.font = UIFont.systemFont(ofSize: 14)
          netWorthLabel.textColor = .lightGray
      }
    
    func setupViews() {
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [
            imageView,
            nameLabel,
            netWorthLabel
        ])
        stackView.axis = .vertical
        // enables auto layout
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        
        //stackView layout
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           
           styleViews()
           setupViews()
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
