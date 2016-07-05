//
//  ViewController.swift
//  is it Prime
//
//  Created by 이승희 on 2016. 3. 4..
//  Copyright © 2016년 이승희. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
   
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func isItPrime(sender: AnyObject) {
        
        // let means it doesn't changed
        
        if let number = Int(numberTextField.text!) {
            
            var isPrime = true
            
            if number == 1 {
                
                isPrime = false
            }
            
            if number != 3 && number != 1 {
                
                for var i = 2; i < number; i++ {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                    }
                    
                }
                
            }
            
            if isPrime {
                
                resultLabel.text = "\(number) is prime!"
                
            } else {
                
                resultLabel.text = "\(number) is not prime"
                
            }
            
        } else {
            
            resultLabel.text = "Please enter a whole number"
            
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

