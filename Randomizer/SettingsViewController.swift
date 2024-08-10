//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Lex Koby on 08.08.2024.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue
        maximumValueTF.text = minimumValue
    }
    
    @IBAction func cancelButtonAction() {
        dismiss(animated: true)
    }
}
