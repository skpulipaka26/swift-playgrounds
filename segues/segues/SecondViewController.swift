//
//  SecondViewController.swift
//  segues
//
//  Created by Pulipaka Sai Krishna on 10/11/18.
//  Copyright © 2018 Pulipaka Sai Krishna. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var textPassedOver: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = textPassedOver
    }
    
    @IBAction func navigateToFirstScreen(_ sender: UIButton) {
        performSegue(withIdentifier: "goToFirstScreen", sender: self)
    }
    
}
