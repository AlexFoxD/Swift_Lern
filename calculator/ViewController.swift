//
//  ViewController.swift
//  Calculator
//
//  Created by neoviso on 12/11/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    var numberFromScreen:Double = 0
    var firstNumber:Double = 0
    var results:String = "0"
    var operation:Int = 0
    var mathSign:Bool = false

    // MARK: - Outlets

    @IBOutlet private(set) weak var result: UILabel! // Вот это Аутлет на конкретный айтем, т.е. конкретный лейбл :)
    @IBOutlet private(set) var rounderItems: [UIButton]! { // Коллекция Аутлетов
        willSet { // Будет установлено (наблюдатель)
            newValue.forEach { // Для всех айтемов этой коллекции (newValue - эта коллекциия, новое значение)
                $0.layer.cornerRadius = 40 // Ставим корнер радиус
            }
        }
    }

    // MARK: - Actions

    @IBAction func digits(_ sender: UIButton) {
        if result.text == "0"{
            result.text = "\(sender.tag)"
        }else if mathSign{
            mathSign = false
            result.text = "\(sender.tag)"
        }else{
            result.text! += "\(sender.tag)"
        }
        numberFromScreen = Double(result.text!)!    }


    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "0" , !mathSign{

            switch sender.tag {
            case 10: // C
                result.text = "0"
                firstNumber = 0
                numberFromScreen = 0
                operation = 0
            case 11:  // /
                firstNumber = Double(result.text!)!
                result.text = "/"
            case 12: // *
                firstNumber = Double(result.text!)!
                result.text = "x"
            case 13: // -
                firstNumber = Double(result.text!)!
                result.text = "-"
            case 14: // +
                firstNumber = Double(result.text!)!
                result.text = "+"
            case 15: // =
                switch operation {
                case 14:
                    result.text = String(firstNumber + numberFromScreen)
                case 13:
                    result.text = String(firstNumber - numberFromScreen)
                case 12:
                    result.text = String(firstNumber * numberFromScreen)
                case 11:
                    result.text = String(firstNumber / numberFromScreen)
                default:
                    result.text = "0"
                }
            default:
                break
            }

            operation = sender.tag
            mathSign = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

