//
//  CardTableViewCell.swift
//  SwiftPills
//
//  Created by Francesco Chiusolo on 13/02/2018.
//  Copyright © 2018 Francesco Chiusolo. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var containerView: UIView! {
        didSet {
            // Make it card-like
            containerView.backgroundColor = UIColor.clear
            containerView.layer.shadowOpacity = 1
            containerView.layer.shadowRadius = 2
            containerView.layer.shadowColor = UIColor(named: "Orange")?.cgColor
            containerView.layer.shadowOffset = CGSize(width: 3, height: 3)
        }
    }
    
    @IBOutlet weak var clippingView: UIView! {
        didSet {
            clippingView.layer.cornerRadius = 10
            clippingView.backgroundColor = UIColor(named: "Red")
            clippingView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var roleLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var captainImage: UIImageView!
    
    // MARK: - Properties
    
    var footballer: CardsTableViewController.Footballer? {
        didSet {
            if let footballer = footballer {
                nameLabel.text = footballer.name
                roleLabel.text = footballer.role.rawValue
                ageLabel.text = "\(footballer.age) years old"
                captainImage.isHidden = !footballer.isCaptain
            }
        }
    }
    
}
