//
//  TableViewController.swift
//  SlapChat
//
//  Created by susan lovaglio on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController
{
    
    let store = DataStore.sharedDataStore

    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        store.fetchData()
        
    }
    
    override func viewWillAppear(animated: Bool)
    {
        store.fetchData()
        tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return store.messages.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = store.messages[indexPath.row].content
        
        return cell
    }
    

}
