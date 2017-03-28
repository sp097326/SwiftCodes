//
//  ViewController.swift
//  MyCloudNotes
//
//  Created by swiftdev on 3/27/17.
//  Copyright © 2017 swiftdev. All rights reserved.
//

import UIKit
import EvernoteSDK


class ViewController: UIViewController {

    let key = "sp097326";
    let secret = "2ff61148b74fc723"
    let developerToken = "S=s50:U=54831e:E=1626a40b531:C=15b128f87c0:P=1cd:A=en-devtoken:V=2:H=7aff062bef69b8e5cb6903393812dd3c"
    let noteStore = "https://www.evernote.com/shard/s50/notestore"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func getCloudNotes(_ sender: UIButton) {
        print("Go get the notes");
        
        //trying to get a connectionto Evernote
        //First setup you key session <this example has a developer token>
        //this should be on a try/catch structure
        //ENSession.setSharedSessionConsumerKey(key,consumerSecret: secret, optionalHost: ENSessionHostSandbox);
        ENSession.setSharedSessionDeveloperToken(developerToken, noteStoreUrl: noteStore);
        print("executed setSharedSession");
        
        ENSession.shared.authenticate(with: self, preferRegistration: false) { (_error: Error?) in
            //print("Error in authenticate...");
        }
        
        print("executed authenticate...");
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

