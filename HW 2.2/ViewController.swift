//
//  ViewController.swift
//  HW 2.2
//
//  Created by Виталий Подшибякин on 26.01.2022.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet var viewToColor: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //View
        viewToColor.layer.cornerRadius = 10
       
        //Slider
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
    }
    
    override func viewWillLayoutSubviews() {
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        let viewColor = UIColor(displayP3Red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        viewToColor.backgroundColor = viewColor
    }
    
    @IBAction func redSliderColoring() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        
    }
    
    @IBAction func greenSliderColoring() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderColoring() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

