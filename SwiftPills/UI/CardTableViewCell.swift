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
    
    @IBOutlet weak var containerView: UIView!
    
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
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Make it card-like
        containerView.layer.cornerRadius = 10
        containerView.layer.shadowOpacity = 0.6
        containerView.layer.shadowRadius = 2
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOffset = CGSize(width: 2, height: 2)
    }
    
}
