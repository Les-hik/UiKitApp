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
    
    @IBOutlet var datePicker: UIDatePicker!
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
        datePicker.locale = Locale(identifier: "ru_RU")
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
            showAlert(with: "Text filed is empty", and: "Please inter you name")
            return
        }
        if let _ = Double(inputName) {
            showAlert(with: "Wrong Format", and: "Please inter you name")
            print("Wrong Format")
            return
        }
        textLable.text = inputName
    }
    
    @IBAction func datePikerAction() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.locale = Locale(identifier: "ru_RU")
        textLable.text = dateFormatter.string(from: datePicker.date)
    }
    
}
// MARK: - Alert Controller
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAcnion = UIAlertAction(title: "OK", style: .default) { _ in
            self.textFiled.text = ""
        }
        alert.addAction(okAcnion)
        present(alert, animated: true)
    }
}

