//
//  SecondViewController.swift
//  Two_Segues
//
//  Created by Ali on 10/29/18.
//  Copyright © 2018 Kashif Ali. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
//    data coming from first controller
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
        
    }
}
