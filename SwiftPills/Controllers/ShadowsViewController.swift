//
//  ShadowsViewController.swift
//  SwiftPills
//
//  Created by Francesco Chiusolo on 12/02/2018.
//  Copyright © 2018 Francesco Chiusolo. All rights reserved.
//

import UIKit

class ShadowsViewController: UIViewController {
    
    @IBOutlet
    weak var cardView: UIView! {
        didSet {
            cardView.layer.cornerRadius = 10
            cardView.layer.shadowOpacity = 1
            cardView.layer.shadowRadius = 4
            cardView.layer.shadowColor = UIColor(named: "Orange")!.cgColor
            cardView.layer.shadowOffset = CGSize(width: 4, height: 4)
        }
    }
    
    @IBOutlet
    weak var ballView: UIView! {
        didSet {
            let ballWidth = ballView.frame.width
            let ballHeight = ballView.frame.height
            let distanceFromCard = 15
            
            ballView.layer.cornerRadius = ballWidth * 0.5
            ballView.layer.shadowOpacity = 0.1
            ballView.layer.shadowRadius = 2
            ballView.layer.shadowColor = UIColor.black.cgColor
            ballView.layer.shadowOffset = CGSize(width: 0, height: ballHeight)
            
            let path = CGPath(ellipseIn: CGRect(x: 0, y: distanceFromCard, width: Int(ballWidth), height: Int(ballHeight * 0.1)), transform: nil)
            
            ballView.layer.shadowPath = path
        }
    }
    
}
