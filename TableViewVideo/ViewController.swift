//
//  ViewController.swift
//  TableViewVideo
//
//  Created by Michael Maczynski on 2/23/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var cities = ["Chicago", "San Fransisco", "Dallas", "Paris", "Rome", "New York"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }
    
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return cities.count
    }
    
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
       // var myCell = tableViewOutlet.dequeueReusableCellWithIdentifier("myCell")! as UITableViewCell
        var myCell = tableViewOutlet.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        myCell.textLabel?.text = cities[indexPath.row]
        return myCell
        
    }

}

