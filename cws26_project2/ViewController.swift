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
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        /*guard let path = NSBundle.mainBundle().pathForResource("AnimalList", ofType: "plist") else {
            print("Invalid path for plist")
            return false
        }
        
        let dict = NSMutableDictionary(contentsOfFile: path)
        dict!.setValue("Test", forKey: "animal1")
        if dict!.writeToFile(path, atomically: true){
            print("plist_write")
        }else{
            print("plist_write_error")
        }*/
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}