//
//  SecondViewController.swift
//  Two_Segues
//
//  Created by Ali on 10/29/18.
//  Copyright © 2018 Kashif Ali. All rights reserved.
//

import UIKit

//Step One: Defining a protocol, it's as same level as class

protocol canReceive {
    //Defining a function in protocoal that our first view controller need to "confrom" to.
    //    This doesn't have any body, it's body will be in first view controller. That's conforming (I guess) #setting the rule
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

//    Step Four: Define delegate variable. Delegate will send the data to first view controller, Data type of the delegate will be protocol, i.e canReceive? (Optional)
    var delegate : canReceive?
    
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Showing data from first controller
        label.text = data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sendDataBack(_ sender: Any) {
        //Step Five: Sending the data back when button is pressed
        delegate?.dataReceived(data: textField.text!)
        //        Step Seven: Dismiss the current view to go back to first view
        dismiss(animated: true, completion: nil)
    }
}
