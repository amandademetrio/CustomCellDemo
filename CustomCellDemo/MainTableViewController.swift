//
//  MainTableViewController.swift
//  CustomCellDemo
//
//  Created by Amanda Demetrio on 9/12/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var nums = [1,90,32,23,9,12]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        cell.rightLabel.text = "\(nums[indexPath.row])"
                
        if nums[indexPath.row] > 24 {
            cell.backgroundColor = UIColor.green
        }
        else {
            cell.backgroundColor = UIColor.red
        }
        return cell
    }

}
