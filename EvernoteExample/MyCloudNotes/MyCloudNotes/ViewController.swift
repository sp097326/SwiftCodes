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

    //constants
    let key = "sp097326";
    let secret = "2ff61148b74fc723"
    let developerToken = "S=s50:U=54831e:E=1626a40b531:C=15b128f87c0:P=1cd:A=en-devtoken:V=2:H=7aff062bef69b8e5cb6903393812dd3c"
    let noteStoreUrl = "https://www.evernote.com/shard/s50/notestore"

    //variables
    @IBOutlet weak var noteBookList: UITextView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var notebookList: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "";
        notebookList.text = "Notebooks for this user: "
        notesLabel.text = ""
        notesTextView.text = "Select a notebook to view the notes"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func getCloudNotes(_ sender: UIButton) {
        //debugging notes
        print("Go get the notes");
        
        /*
         First setup you key session <this example has a developer token>
         you can also initialize an acces to your actual account with a developer token like this:
          -- ENSession.setSharedSessionDeveloperToken(developerToken, noteStoreUrl: noteStoreUrl);
         your accunt needs to be preimum or business to do this.
         the use of this code (setSharedSessionConsumerKey) will use oauth behind to allow your dev account access
        */
 
        ENSession.setSharedSessionConsumerKey(key,consumerSecret: secret, optionalHost: ENSessionHostSandbox);
        
        print("executed setSharedSession");
        
        ENSession.shared.authenticate(with: self, preferRegistration: false) { (_error: Error?) in
            //print("Error in authenticate...");
        }
        print("executed authenticate")
        
        var userID : String
        //var foundNote : ENNote
        let noteStore : ENNoteStoreClient = ENSession.shared.primaryNoteStore()!
        //var notebook : ENNotebook = ENNotebook()
        userID = ENSession.shared.userDisplayName

        
        if (ENSession.shared.isPremiumUser) {
            print("welcome premium \(userID)")
        } else {
            print("Welcome estandar userer \(userID)")
        }
        
        print("NOTEBOOKSTORE: \(String(describing: noteStore.debugDescription))")
        
        
        // getting the notebooks and iterating through available notebooks
        //var _ : ENNotebook

        ENSession.shared.listNotebooks { (notebook, error) in
            print("got notebooks \(String(describing: notebook?.count))  : \(String(describing: notebook))")
            
            for curNote in (notebook?.makeIterator())! {
                self.noteBookList.text.append("- \(String(describing: curNote.name))")
                
            }
            
        }
        

        
        welcomeLabel.text = "Welcome " + ENSession.shared.userDisplayName
        
        print("End of the code...");
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

