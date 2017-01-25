//
//  SecondViewController.swift
//  delegatePattern
//
//  Created by Youngsun Paik on 1/15/17.
//  Copyright © 2017 Youngsun Paik. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func didSelectInput(input: String)
}

class SecondViewController: UIViewController {

    weak var delegate: SecondViewControllerDelegate?

    @IBOutlet weak var inputTextField: UITextField!
    @IBAction func submitButton(_ sender: Any) {
        guard let input = inputTextField.text else {
            return
        }
        self.delegate?.didSelectInput(input: input)
        navigationController?.popViewController(animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
