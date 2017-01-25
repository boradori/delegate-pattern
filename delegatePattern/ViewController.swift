//
//  ViewController.swift
//  delegatePattern
//
//  Created by Youngsun Paik on 1/15/17.
//  Copyright © 2017 Youngsun Paik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func didSelectInput(input: String) {
        outputLabel.text = input
    }
}
