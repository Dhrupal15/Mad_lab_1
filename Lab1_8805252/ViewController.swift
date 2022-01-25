//
//  ViewController.swift
//  Lab1_8805252
//
//  Created by user204862 on 1/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appLogo: UIImageView!
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var stepButton: UIButton!
    
    var outputValue: Int = 0 {
        didSet {
            output.text = String(outputValue);
        }
    }
    
    var stepIncrement: Int = 1 {
        didSet {
            stepButton.setTitle("Step = " + String(stepIncrement), for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset();
    }
    
    func reset() {
        outputValue = 0;
        stepIncrement = 1;
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        reset();
    }
    
    @IBAction func incrementButton(_ sender: UIButton) {
        outputValue += stepIncrement;
    }
    
    @IBAction func decrementButton(_ sender: UIButton) {
        outputValue -= stepIncrement;
    }
    
    @IBAction func stepChange(_ sender: UIButton) {
        if (stepIncrement == 1) {
            stepIncrement = 2;
        } else {
            stepIncrement = 1;
        }
    }
    
}

