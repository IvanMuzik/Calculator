//
//  ViewController.swift
//  calculator
//
//  Created by Ivan Muzalevski on 19.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet var buttonsOutlet: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        buttonChenge()
        
        }
        
    func buttonChenge(){
        for button in buttonsOutlet{
            button.layer.cornerRadius = 50
            }
    }
}

