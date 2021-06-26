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
    @IBOutlet weak var segmentetControl: UISegmentedControl!
    @IBOutlet weak var viewBackGround: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.isHidden = true
        pushMeButton.layer.cornerRadius = 15
        viewBackGround.backgroundColor = .systemPink
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
    @IBAction func changedSegmentetControl(_ sender: Any) {
        if segmentetControl.selectedSegmentIndex == 0 {
            viewBackGround.backgroundColor = .gray
        } else if segmentetControl.selectedSegmentIndex == 1 {
            viewBackGround.backgroundColor = .yellow
        } else {
            viewBackGround.backgroundColor = .green
        }
    }
}
