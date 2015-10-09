//
//  ViewController.swift
//  cws26_project2
//
//  Created by Skala,Cody on 10/9/15.
//  Copyright © 2015 Skala,Cody. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var animal1: UITextField!
    @IBOutlet weak var animal2: UITextField!
    @IBOutlet weak var animal3: UITextField!
    @IBOutlet weak var animal4: UITextField!
    @IBOutlet weak var animal5: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animal1.delegate = self
        animal2.delegate = self
        animal3.delegate = self
        animal4.delegate = self
        animal5.delegate = self
        guard let path = NSBundle.mainBundle().pathForResource("AnimalList", ofType: "plist") else {
            print("Invalid path for plist")
            return
        }
        
        // load the dictionary
        var data = NSDictionary(contentsOfFile: path) as? Dictionary<String, String>
        
        // string from the dictionary
        var s = data?["animal1"]
        animal1.text = s
        s = data?["animal2"]
        animal2.text = s
        s = data?["animal3"]
        animal3.text = s
        s = data?["animal4"]
        animal4.text = s
        s = data?["animal5"]
        animal5.text = s
        
        /*let documentDir = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let url = NSURL(string: documentDir)
        guard let docurl = url?.URLByAppendingPathComponent("AnimalList.plist")else{ return }
        if let docurlpath = docurl.path{
            var rdata = NSDictionary(contentsOfFile: docurlpath) as! Dictionary<String, String>
        }
        else{
            var rdata = data
        }
        var rdata = data
        (rdata! as NSDictionary).writeToFile(docurl, atomically: true)*/
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}