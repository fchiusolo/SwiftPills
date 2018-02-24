//
//  RoundedViewsViewController.swift
//  SwiftPills
//
//  Created by Francesco Chiusolo on 10/02/2018.
//  Copyright © 2018 Francesco Chiusolo. All rights reserved.
//

import UIKit

class RoundedViewsViewController: UIViewController {
    
    @IBOutlet weak var roundedView: UIView! {
        didSet {
            roundedView.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet weak var circularView: UIView! {
        didSet {
            circularView.layer.cornerRadius = circularView.frame.width * 0.5
        }
    }
    
    @IBOutlet weak var roundedMaskedView: UIView! {
        didSet {
            roundedMaskedView.layer.cornerRadius = 20
            roundedMaskedView.layer.maskedCorners = [
                .layerMaxXMaxYCorner,
                .layerMinXMaxYCorner
            ]
        }
    }
    
}
