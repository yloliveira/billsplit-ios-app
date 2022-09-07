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
    
    var billBrain = BillBrain()
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "home_to_result") {
            let destination = segue.destination as! ResultViewController
            destination.totalPerPerson = billBrain.getTotal()
            destination.descriptionText = billBrain.getDescription()
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let inputValue: Float = Float(totalTextInput.text!)!
        let tip = tipSlider.value
        let peopleQuantity: Float = Float(peopleQuantityLabel.text!)!
        
        billBrain.calculate(value: inputValue, tip: tip, quantity: peopleQuantity)
        
        performSegue(withIdentifier: "home_to_result", sender: self)
    }
    
}
