//
//  ViewController.swift
//  calculator
//
//  Created by Ivan Muzalevski on 19.02.23.
//

import UIKit

class ViewController: UIViewController {

    var firstNumber = "" // Первое вводимое число
    var secondNumber = "" // Второе вводивое число
    var result = "" // равно
    var working = "" //нужно переменная куда будет сохранять промежуточные
    
    @IBOutlet weak var calculatorWorkingLabel: UILabel!
    @IBOutlet weak var calculatorResultLabel: UILabel!
    
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
   
    @IBAction func numPressed(_ sender: UIButton) { // кнопки от 0...9
        addToWorking(value: String(sender.tag))
    }
    
    @IBAction func acButton(_ sender: UIButton) { // кнопка обнуления
        clearAll()
        
    }
    
    @IBAction func backspaceButton(_ sender: UIButton) { // кнопка назад
        if working.isEmpty == false{
            working.removeLast()
            calculatorWorkingLabel.text = working
        }
    }
    
    @IBAction func percentButton(_ sender: UIButton) { // процент
        addToWorking(value: (sender.titleLabel?.text)!)
    }
    
    @IBAction func sharingButton(_ sender: UIButton) { // делить
        addToWorking(value: (sender.titleLabel?.text)!)
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) { // умножить
        addToWorking(value: (sender.titleLabel?.text)!)
    }
    
    @IBAction func minusButton(_ sender: UIButton) { // минус
        addToWorking(value: (sender.titleLabel?.text)!)
    }
    
    @IBAction func plusButton(_ sender: UIButton) { // плюс
        addToWorking(value: "+")
    }
    
    @IBAction func equalButton(_ sender: UIButton) { // равно
        let expression = NSExpression(format: working)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResultLabel.text = resultString 
    }
    
    @IBAction func pointButton(_ sender: UIButton) { //кнопка точка
        addToWorking(value: (sender.titleLabel?.text)!)
    }
    
    func formatResult(result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
    }
    
    func addToWorking(value: String){
        working = working + value
        calculatorWorkingLabel.text = working
    }
    
    func clearAll(){
        working = ""
        calculatorWorkingLabel.text = ""
        calculatorResultLabel.text = ""

    }
    
}

// сделать кнопку обнуление и прописат
// кнопку удалить
//кнопку +
// кнопку -
// кнопку *
// кнопку /
// кнопку =
// кнопку %
// кнопку назад
 
