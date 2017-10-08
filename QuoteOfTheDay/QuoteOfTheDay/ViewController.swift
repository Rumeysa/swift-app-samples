//
//  ViewController.swift
//  QuoteOfTheDay
//
//  Created by Fernando Seguim on 08/10/17.
//  Copyright © 2017 Fernando Seguim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let quotes = [
        "O sucesso normalmente vem para quem está ocupado demais para procurá-lo."
        ,"Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos."
        ,"Se você ão está disposto a arriscar, esteja disposto a uma vida comum."
    ]
    
    @IBOutlet weak var lblQuoteOutput: UILabel!
    
    @IBAction func getAnyQuote(_ sender: Any) {
        
        let index = arc4random_uniform(3)
        lblQuoteOutput.text = quotes[Int(index)]
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

