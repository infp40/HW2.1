//
//  ViewController.swift
//  HW2.1
//
//  Created by Максим Палехин on 26.06.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var pushMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.isHidden = true
        pushMeButton.layer.cornerRadius = 15
    }
    
    @IBAction func tappedButtonPushMe(_ sender: Any) {
        if textLabel.isHidden == true {
            textLabel.isHidden = false
            pushMeButton.setTitle("Еще раз!", for: .normal)
        } else {
            textLabel.isHidden = true
            pushMeButton.setTitle("Нажми меня, Срочно!", for: .normal)
        }
    }
}
