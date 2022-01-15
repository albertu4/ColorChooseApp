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
    
    //Values of Sliders
    @IBOutlet var valueOfRed: UILabel!
    @IBOutlet var valueOfGreen: UILabel!
    @IBOutlet var valueOfBlue: UILabel!
    
    //Sliders
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!

    //Values for colors
    var redColor: CGFloat = 0
    var greenColor: CGFloat = 0
    var blueColor: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorWindowView.layer.cornerRadius = 10
    }
    
    //MARK: IBActions
    @IBAction func useRedColorSlider() {
        valueOfRed.text = String(format: "%.2f", redColorSlider.value)
        redColor = CGFloat(redColorSlider.value)
        changeColor()
    }
    
    @IBAction func useGreenColorSlider() {
        valueOfGreen.text = String(format: "%.2f", greenColorSlider.value)
        greenColor = CGFloat(greenColorSlider.value)
        changeColor()
    }
    
    @IBAction func useBlueColorSlider() {
        valueOfBlue.text = String(format: "%.2f", blueColorSlider.value)
        blueColor = CGFloat(blueColorSlider.value)
        changeColor()
    }
    
    //MARK: logic to set of colors
    func changeColor() {
        let backgroundColorOfView = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        colorWindowView.backgroundColor = backgroundColorOfView
    }
}

