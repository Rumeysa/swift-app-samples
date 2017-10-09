//
//  ViewController.swift
//  EthanolOrGasoline
//
//  Created by Fernando Seguim on 08/10/17.
//  Copyright © 2017 Fernando Seguim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ethanolPriceTextField: UITextField!
    @IBOutlet weak var gasolinePriceTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        
        let ethanolPrice: Double = parseFuelPrice(textField: ethanolPriceTextField)
        let gasolinePrice: Double = parseFuelPrice(textField: gasolinePriceTextField)
        
        let result: String = testEthanolOrGasoline(ethanol: ethanolPrice, gasoline: gasolinePrice)
        
        outputLabel.text = result
    }
    
    func parseFuelPrice(textField: UITextField) -> Double{
        
        var result: Double = 0.0
        
        do {
            
            try result = Double (textField.text!)!
            return result
            
        } catch {
            print("Erro ao converter valor.")
        }
    }
    
    func testEthanolOrGasoline(ethanol: Double, gasoline: Double ) -> String {
        let quocient: Double = (ethanol / gasoline)
        if (quocient >= 0.7) {
            return "Melhor utilizar gasolina"
        }
        else{
            return "Melhor utilizar alcool"
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

