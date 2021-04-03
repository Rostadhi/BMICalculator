//
//  BMIViewController.swift
//  BMICalculator
//
//  Created by Rostadhi Akbar, M.Pd on 01/04/21.
//

import UIKit

class BMIViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultInfoLabel: UILabel!
    
    var bmiValue: Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // tipe data
        // string, double, float, bool, int
        
        resultLabel.text = "Beluman Coy"
    }
    func setupView()  {
        resultLabel.text = "asdawdasdw"
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(sender.value)"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(sender.value)"
    }

    @IBAction func modeChanged(_ sender:UISegmentedControl){
        switch sender.selectedSegmentIndex {
        case 1:
            view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            resultLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        default:
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            resultLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    @IBAction func calculateButtonDidTap(_ sender: UIButton) {
        let height = heightSlider.value / 100
        let weight = weightSlider.value
        
        bmiValue = Double(weight / pow(height, 2))
        
        
        resultLabel.text = "\(bmiValue)"
        resultInfoLabel.text = getBMIStatus(bmiValue: bmiValue)
    }
    func getBMIStatus(bmiValue: Double) -> String {
        if bmiValue < 18.5 {
            return "Underweight"
        } else
        if bmiValue < 24.9 {
            return "normal"
        }else
        if bmiValue < 29.9 {
            return "overweight"
        } else {
            return"obese"
        }
    }
    
}
