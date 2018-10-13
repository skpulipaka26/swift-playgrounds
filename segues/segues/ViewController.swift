//
//  ViewController.swift
//  segues
//
//  Created by Pulipaka Sai Krishna on 10/11/18.
//  Copyright © 2018 Pulipaka Sai Krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func navigateToSecondView(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.textPassedOver = nameInput.text ?? ""
    }
    
}

