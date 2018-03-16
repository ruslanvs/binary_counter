//
//  BinaryCounterCell.swift
//  binary_counter
//
//  Created by Ruslan Suvorov on 3/15/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import Foundation

import UIKit

protocol BinaryCounterCellDelegate: class {
    func add( num: Int )
    func subtract( num: Int )
}

class BinaryCounterCell: UITableViewCell {

    weak var delegate: BinaryCounterCellDelegate?
    
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    
    @IBAction func incrementButtonPressed(_ sender: UIButton) {
       let num = Int(self.incrementLabel.text!)
       delegate?.add( num: num! )
    }
    
    @IBAction func decrementButtonPressed(_ sender: UIButton) {
        let num = Int(self.incrementLabel.text!)
        delegate?.subtract( num: num! )
    }
    
    @IBOutlet weak var incrementLabel: UILabel!
}
