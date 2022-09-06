//
//  ViewController.swift
//  BillSplit
//
//  Created by Yan Oliveira on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var totalTextInput: UITextField!
    @IBOutlet weak var tipValueLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var peopleQuantityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tipSliderValueChanged(_ sender: UISlider) {
        let value = String(format: "%.0f", sender.value)
        tipValueLabel.text = "\(value)%"
    }
    
    @IBAction func peopleQuantityValueChanged(_ sender: UIStepper) {
        peopleQuantityLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let peopleQuantity: Float = Float(peopleQuantityLabel.text!)!
        let inputText: Float = Float(totalTextInput.text!)!
        
        let totalWithTip = inputText + (inputText * (tipSlider.value / 100))
        
        let total = totalWithTip / peopleQuantity
        print(total)
        performSegue(withIdentifier: "home_to_result", sender: self)
    }
    
}
