//
//  AddMessageViewController.swift
//  SlapChat
//
//  Created by Flatiron School on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class AddMessageViewController: UIViewController
{

    let store = DataStore.sharedDataStore
    
    @IBOutlet weak var addMessageTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
       
    }
    

    @IBAction func addMessageButton(sender: AnyObject)
    {
        let context = store.managedObjectContext
        let addedMessage = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: context) as! Message
        
        addedMessage.content = addMessageTextField.text
        addedMessage.createdAt = NSDate()
        
        store.saveContext()
        self.dismissViewControllerAnimated(true, completion: nil)
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
