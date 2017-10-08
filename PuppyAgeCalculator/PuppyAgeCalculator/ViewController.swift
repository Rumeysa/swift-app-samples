//
//  ViewController.swift
//  PuppyAgeCalculator
//
//  Created by Fernando Seguim on 08/10/17.
//  Copyright © 2017 Fernando Seguim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPuppyAge: UITextField!
    
    @IBOutlet weak var lblPuppyAgeOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculatePuppyAge(_ sender: Any) {
        
        var puppyAge = Int( txtPuppyAge.text!)!
        puppyAge = puppyAge * 7
        lblPuppyAgeOutput.text = "A idade do cachorro é: " + String(puppyAge)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

