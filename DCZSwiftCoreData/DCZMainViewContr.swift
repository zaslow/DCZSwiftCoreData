//
//  DCZMainViewContr.swift
//  DCZSwiftCoreData
//
//  Created by Zaslow, Dean Clayton on 4/16/15.
//  Copyright (c) 2015 Zaslow, Dean Clayton. All rights reserved.
//

import UIKit
import CoreData

class DCZMainViewContr: UIViewController {
    
    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    @IBAction func btnSave() {
        var appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as NSManagedObject
        newUser.setValue("Test Username", forKey: "username")
        newUser.setValue("Test Password", forKey: "password")
    }
    
    @IBAction func btnLoad() {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
