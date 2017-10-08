//
//  ViewController.swift
//  RandomNumbersGenerator
//
//  Created by Fernando Seguim on 08/10/17.
//  Copyright © 2017 Fernando Seguim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumberOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func generateNumber(_ sender: Any) {
        let numberRandom = arc4random_uniform(101)
        lblNumberOutput.text = String(numberRandom)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

