//
//  HomeTableViewCell.swift
//  SelfSizing
//
//  Created by hoang linh on 11/2/20.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    var nameURL = UILabel()
    var descriptions = UILabel()
    var imageURL = UIImageView()
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(imageURL)
        contentView.addSubview(nameURL)
        contentView.addSubview(descriptions)
        
        setupImageURL()
//        setUpName()
        setupDes()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpName(){
       
        let marginGuide = contentView.layoutMarginsGuide
           
        nameURL.translatesAutoresizingMaskIntoConstraints = false
        nameURL.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
        nameURL.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true
        nameURL.leadingAnchor.constraint(equalTo: imageURL.leadingAnchor).isActive = true
        nameURL.numberOfLines = 0
        nameURL.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
    }
    func setupDes(){
        
        let marginGuide = contentView.layoutMarginsGuide
           
        descriptions.translatesAutoresizingMaskIntoConstraints = false
        descriptions.topAnchor.constraint(equalTo: imageURL.topAnchor).isActive = true
        descriptions.leadingAnchor.constraint(equalTo: imageURL.trailingAnchor, constant: 10).isActive = true
        descriptions.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
        descriptions.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor).isActive = true

        descriptions.numberOfLines = 0
        descriptions.font = UIFont(name: "Avenir-Book", size: 18)
        descriptions.textColor = UIColor.lightGray
    }
    func setupImageURL(){
        let marginGuide = contentView.layoutMarginsGuide
//
//        imageURL.translatesAutoresizingMaskIntoConstraints = false
//        imageURL.topAnchor.constraint(equalTo:topAnchor, constant: 10).isActive = true
//        imageURL.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
//        imageURL.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        imageURL.heightAnchor.constraint(equalToConstant: 80).isActive = true
//        imageURL.widthAnchor.constraint(equalTo: imageURL.heightAnchor, multiplier: 16/9).isActive = true
////
////
        
    }

}
