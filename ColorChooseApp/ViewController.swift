//
//  ViewController.swift
//  ColorChooseApp
//
//  Created by Михаил Иванов on 15.01.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet var colorWindowView: UIView!
    
    @IBOutlet var valueOfRed: UILabel!
    @IBOutlet var valueOfGreen: UILabel!
    @IBOutlet var valueOfBlue: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!

    //MARK: Private properties
    private var redColor: CGFloat = 0.20
    private var greenColor: CGFloat = 0.57
    private var blueColor: CGFloat = 0.80
    
    //MARK: Override method
    override func viewDidLoad() {
        super.viewDidLoad()
        colorWindowView.layer.cornerRadius = 10
        
        //Default sets
        redColorSlider.value = Float(redColor)
        greenColorSlider.value = Float(greenColor)
        blueColorSlider.value = Float(greenColor)
        
        transferSliderToValue(redColorSlider)
        transferSliderToValue(greenColorSlider)
        transferSliderToValue(blueColorSlider)
        
        changeColor()
    }
    
    //MARK: IBActions
    @IBAction func useRedColorSlider() {
        transferSliderToValue(redColorSlider)
        redColor = CGFloat(redColorSlider.value)
        changeColor()
    }
    
    @IBAction func useGreenColorSlider() {
        transferSliderToValue(greenColorSlider)
        greenColor = CGFloat(greenColorSlider.value)
        changeColor()
    }
    
    @IBAction func useBlueColorSlider() {
        transferSliderToValue(blueColorSlider)
        blueColor = CGFloat(blueColorSlider.value)
        changeColor()
    }
    
    //MARK: Private Methods
    private func transferSliderToValue(_ slider: UISlider) {
        switch slider {
        case redColorSlider:
            valueOfRed.text = String(format: "%.2f", redColorSlider.value)
        case greenColorSlider:
            valueOfGreen.text = String(format: "%.2f", greenColorSlider.value)
        default:
            valueOfBlue.text = String(format: "%.2f", blueColorSlider.value)
        }
    }
        
    private func changeColor() {
        let backgroundColorOfView = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        colorWindowView.backgroundColor = backgroundColorOfView
    }
}

