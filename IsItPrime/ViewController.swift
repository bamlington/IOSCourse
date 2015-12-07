//
//  ViewController.swift
//  IsItPrime
//
//  Created by Nik Newark on 07/12/2015.
//  Copyright © 2015 Buffalo Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumber: UITextField!
    
   @IBOutlet weak var result: UILabel!
    
    
    @IBAction func isItPrime(sender: AnyObject) {
        var i = 2
        
        let inputNumberInt = Int(inputNumber.text!)
        while inputNumberInt! % i > 0 && i < inputNumberInt {
            
            i++
        }
        if i == inputNumberInt {
            result.text = "\(inputNumberInt!) is prime"
        } else if inputNumberInt == 1 {
            result.text = "1 is not a prime number, never was a prime number, and never will be a prime number"
        }
                else {
            result.text = "\(inputNumberInt!) is not prime as it is divisible by \(i)"
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

