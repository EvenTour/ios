//
//  EventCell.swift
//  eventour
//
//  Created by Rafael on 11/7/18.
//  Copyright © 2018 Rafael. All rights reserved.
//

import UIKit

class EventCell: UICollectionViewCell {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIImageView!
    
    
    var isFavorite = false
    
    func update(from event: Event) {
        logoImageView.setImageFrom(
            urlString: event.urlImage, withDefaultNamed: "no-image", withErrorNamed: "no-image")
        nameLabel.text = event.event_name
        isFavorite = event.isFavorite
        
        favoriteButton.setImage(fromAsset: isFavorite  ?
            "heart-black" : "heart-border-black")    }
    
   
    
}
