//
//  CardsTableViewController.swift
//  SwiftPills
//
//  Created by Francesco Chiusolo on 13/02/2018.
//  Copyright © 2018 Francesco Chiusolo. All rights reserved.
//

import UIKit

class CardsTableViewController: UITableViewController {
    
    // MARK: - Types
    
    struct Footballer {
        
        enum Role: String {
            case goalkeeper = "Goalkeeper"
            case defender = "Defender"
            case fullback = "Fullback"
            case midfielder = "Midfielder"
            case wing = "Wing"
            case striker = "Striker"
        }
        
        let name: String
        
        let role: Role
        
        let age: Int
        
        let isCaptain: Bool
        
    }
    
    // MARK: - Properties
    
    let data = [
        Footballer(name: "Buffon", role: .goalkeeper, age: 40, isCaptain: true),
        Footballer(name: "De Sciglio", role: .fullback, age: 25, isCaptain: false),
        Footballer(name: "Barzagli", role: .defender, age: 36, isCaptain: false),
        Footballer(name: "Chiellini", role: .defender, age: 33, isCaptain: false),
        Footballer(name: "Alex Sandro", role: .fullback, age: 27, isCaptain: false),
        Footballer(name: "Marchisio", role: .midfielder, age: 32, isCaptain: false),
        Footballer(name: "Pjanic", role: .midfielder, age: 27, isCaptain: false),
        Footballer(name: "Khedira", role: .midfielder, age: 30, isCaptain: false),
        Footballer(name: "Douglas Costa", role: .wing, age: 27, isCaptain: false),
        Footballer(name: "Higuain", role: .striker, age: 30, isCaptain: false),
        Footballer(name: "Mandzukic", role: .wing, age: 31, isCaptain: false)
    ]
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as? CardTableViewCell else {
            fatalError("No CardTableViewCell for cardCell id")
        }
        
        // Put data into the cell
        cell.footballer = data[indexPath.row]
        
        return cell
    }
    
}
