//
//  ViewController.swift
//  UiKitApp
//
//  Created by Alex on 20.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textLable: UILabel!
    @IBOutlet var segmentControl: UISegmentedControl!
    
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var textFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textLable.font = UIFont.boldSystemFont(ofSize: 35)
        textLable.textAlignment = .center
        textLable.numberOfLines = 4
        segmentControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .purple
        slider.thumbTintColor = .yellow
        textLable.text = String(slider.value)
    }
    
    @IBAction func segmentedControlAcnion() {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            textLable.text = "Нажата кнопка 1"
            textLable.textColor = .red
        case 1:
            textLable.text = "Нажата кнопка 2"
            textLable.textColor = .green
        case 2:
            textLable.text = "Нажата кнопка 3"
            textLable.textColor = .orange
            textLable.font = UIFont.italicSystemFont(ofSize: 40)
        default: break
        }
    }
    
    @IBAction func sliderAction() {
        textLable.text = String(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(slider.value))
    }
    
    @IBAction func doneButtonPress() {
        guard let inputName = textFiled.text, !inputName.isEmpty else {
            print("Text filed is empty")
            return
        }
        if let _ = Double(inputName) {
            print("Wrong Format")
            return
        }
        textLable.text = inputName
    }
}


