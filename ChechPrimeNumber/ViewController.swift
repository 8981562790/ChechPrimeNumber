//
//  ViewController.swift
//  ChechPrimeNumber
//
//  Created by Appsquad Pvt. Ltd. on 25/03/16.
//  Copyright (c) 2016 Appsquad Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userInputField: UITextField!
    
    @IBOutlet weak var ResulField: UILabel!
        @IBAction func checkPrimeNumber(sender: AnyObject) {
            if let num = (Int(userInputField.text!)){
        if num != 2 && num != 1 {
            var c = 0
            for var i = 2; i < num; i += 1 {
                if num % i == 0 {
                 c += 1
                }
            }
                if(c == 0){
                
                ResulField.text = "\(num) is a prime number"
                ResulField.text = " \(100) is not a prime number"
                }
                else{
                ResulField.text = "\(num) is not a prime Number"
                }
        
        }
            }else{
        
        ResulField.text = "Please Enter The Whole Number";
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

