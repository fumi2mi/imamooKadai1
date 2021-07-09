//
//  ViewController.swift
//  imamooKadai1
//
//  Created by Fumitaka Imamura on 2021/07/09.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculatePressed(_ sender: UIButton) {
        var sum = 0
        let textFields = [textField1, textField2, textField3, textField4, textField5]
        for textField in textFields {
            if let text = textField?.text {
                sum += Int(text) ?? 0
            }
        }
        resultLabel.text = String(sum)
    }
}
