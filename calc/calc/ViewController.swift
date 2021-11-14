//
//  ViewController.swift
//  calc
//
//  Created by Вячеслав Мухин on 31.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    var firstNumber = 0.0
    var secondNumber = 0.0
    var operand = 1 //это я тоже понял и почему тут единица стоит тоже только я не понимаю как он меняет значение, где в эту переменную записываются данные
    
    /// Функия вычисления
    /// - Parameter operand: переключатель операндов (1 = +; 2 = -; 3 = •; 4 = /)
    /// - Returns: Вычисленное значение по свитчу
    func calculate(_ operand: Int) -> Double {
        secondNumber = Double(result.text!) ?? firstNumber
        var result: Double?
        switch operand {
        case 1: result = firstNumber + secondNumber
        case 2: result = firstNumber - secondNumber
        case 3: result = firstNumber * secondNumber
        case 4: result = firstNumber / secondNumber
        default: result = firstNumber + secondNumber
        }
        return result!
    }
    
    @IBAction func division(_ sender: Any) {
        firstNumber = Double(result.text!)!
        result.text = ""
        operand = 4
    }
    //
    @IBAction func multi(_ sender: Any) {
        firstNumber = Double(result.text!)!
        result.text = ""
        operand = 3
    }
    @IBAction func substract(_ sender: Any) {
        firstNumber = Double(result.text!)!
        result.text = ""
        operand = 2
    }
    @IBAction func plus(_ sender: Any) {
        firstNumber = Double(result.text!)!
        result.text = ""
        operand = 1
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        result.text = String("\(calculate(operand))")
    }
    @IBAction func negativeButton(_ sender: Any) {
        var tempVar = 0.0
        tempVar = Double(result.text!)!
        tempVar = tempVar * -1
        result.text = "\(tempVar)"
    }
    @IBAction func digits(_ sender: UIButton) {
        result.text = result.text! + String(sender.tag)
    }
    //это то я понял
    @IBAction func addDot(_ sender: Any) {
        result.text = result.text! + String(".")
    }
    
    @IBAction func allClear(_ sender: Any) {
        result.text = ""
        operand = 1
        firstNumber = 0.0
        secondNumber = 0.0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

