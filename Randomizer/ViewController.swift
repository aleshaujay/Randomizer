//
//  ViewController.swift
//  Randomizer
//
//  Created by Lex Koby on 08.08.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Go 2 Settings VC")
        let settingsVC = segue.destination as? SettingsViewController
        settingsVC?.minimumValue = minimumValueLabel.text
        settingsVC?.maximumValue = maximumValueLabel.text
    }
    
    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let settingsVC = segue.source as? SettingsViewController
        minimumValueLabel.text = settingsVC?.minimumValueTF.text
        maximumValueLabel.text = settingsVC?.maximumValueTF.text
    }
}

