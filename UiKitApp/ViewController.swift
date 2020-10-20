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
    override func viewDidLoad() {
        super.viewDidLoad()
        textLable.text = "text"
        textLable.font = UIFont.boldSystemFont(ofSize: 35)
        textLable.textAlignment = .center
        textLable.numberOfLines = 4
        segmentControl.insertSegment(withTitle: "Third", at: 2, animated: false)
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
}

