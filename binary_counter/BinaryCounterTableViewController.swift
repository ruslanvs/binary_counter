//
//  BinaryCounterTableViewController.swift
//  binary_counter
//
//  Created by Ruslan Suvorov on 3/15/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class BinaryCounterTableViewController: UITableViewController {

    let incrementCount = 16
    var increments = [Int]()
    var total = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return incrementCount + 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCounterCell", for: indexPath) as! BinaryCounterCell

        cell.incrementLabel.text = String( describing: pow( 10, indexPath.row ) )
        
        if indexPath.row == incrementCount {
            cell.incrementButton.isHidden = true
            cell.decrementButton.isHidden = true
            cell.incrementLabel.text = String( total )
        }

        cell.delegate = self

        return cell
    }
}

extension BinaryCounterTableViewController: BinaryCounterCellDelegate {
    func subtract( num: Int ) {
        total -= num
        tableView.reloadData()
    }
    
    func add( num: Int ){
        total += num
        tableView.reloadData()
    }
}
