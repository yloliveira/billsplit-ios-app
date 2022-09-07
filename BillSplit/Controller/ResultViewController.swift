//
//  ResultViewController.swift
//  BillSplit
//
//  Created by Yan Oliveira on 02/09/22.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var totalPerPerson: Float?
    var descriptionText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPersonLabel.text = String(format: "%.2f", totalPerPerson!)
        descriptionLabel.text = descriptionText!
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
