//
//  ViewController.swift
//  Two_Segues
//
//  Created by Ali on 10/29/18.
//  Copyright © 2018 Kashif Ali. All rights reserved.
//

import UIKit
// Step 2: Conforming to the protocol. i.e adding the protocal next to class. (It will give an error because we haven't wrote that method yet)
class ViewController: UIViewController, canReceive {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func sendButtonPressed(_ sender: Any) {
//        Invoking Segue to send data when button is pressed
        performSegue(withIdentifier: "sendDataFrw", sender: self)
        
    }
    //Function to prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataFrw" {
            //Sending it to it's destination, which is second view controller
            let secondVC = segue.destination as! SecondViewController
//            Sending data to second view controller
            secondVC.data = textField.text!
            
            //            Step Six: Setting ouerself(This object) as delegate to recive the data
            secondVC.delegate = self
        }
    }
    @IBAction func blueButtonPressed(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    //    Step 3: writing the body of dataReceived function, which in insid over protocol
    
    func dataReceived(data: String) {
        label.text = data
    }
}

