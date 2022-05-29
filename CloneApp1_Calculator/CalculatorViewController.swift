//
//  CalculatorViewController.swift
//  CloneApp1_Calculator
//
//  Created by 김예훈 on 2022/05/29.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let textField = UITextField()
        textField.textColor = .white
        textField.font = .systemFont(ofSize: 92, weight: .light)
        textField.text = "123"
        textField.textAlignment = .right
        view.addSubview(textField)
        
        let margins = view.layoutMarginsGuide
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        textField.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        
        let zero = CalculatorButton(name: "0", case: .operand)
        let one = CalculatorButton(name: "1", case: .operand)
        let two = CalculatorButton(name: "2", case: .operand)
        let three = CalculatorButton(name: "3", case: .operand)
        let four = CalculatorButton(name: "4", case: .operand)
        let five = CalculatorButton(name: "5", case: .operand)
        let six = CalculatorButton(name: "6", case: .operand)
        let seven = CalculatorButton(name: "7", case: .operand)
        let eight = CalculatorButton(name: "8", case: .operand)
        let nine = CalculatorButton(name: "9", case: .operand)
        let dot = CalculatorButton(name: ".", case: .operand)
        let multiplier = CalculatorButton(systemName: "xmark", case: .basicOperator)
        let minus = CalculatorButton(systemName: "minus", case: .basicOperator)
        let plus = CalculatorButton(systemName: "plus", case: .basicOperator)
        let divider = CalculatorButton(systemName: "divide", case: .basicOperator)
        let equal = CalculatorButton(systemName: "equal", case: .basicOperator)
        let ac = CalculatorButton(name: "AC", case: .etc)
        let change = CalculatorButton(systemName: "plus.forwardslash.minus", case: .etc)
        let percent = CalculatorButton(systemName: "percent", case: .etc)
        
        let test = CalculatorButton(systemName: "equal", case: .operand)
        
        let firstStack = UIStackView(arrangedSubviews: [ac, change, percent, divider])
        let secondStack = UIStackView(arrangedSubviews: [seven, eight, nine, multiplier])
        let thirdStack = UIStackView(arrangedSubviews: [four, five, six, minus])
        let fourthStack = UIStackView(arrangedSubviews: [one, two, three, plus])
        let fifthStack = UIStackView(arrangedSubviews: [zero, test, dot, equal])
        
        view.addSubview(firstStack)
        view.addSubview(secondStack)
        view.addSubview(thirdStack)
        view.addSubview(fourthStack)
        view.addSubview(fifthStack)
        
        setStack(to: firstStack)
        setStack(to: secondStack)
        setStack(to: thirdStack)
        setStack(to: fourthStack)
        setStack(to: fifthStack)
        
        firstStack.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10).isActive = true
        secondStack.topAnchor.constraint(equalTo: firstStack.bottomAnchor, constant: 16).isActive = true
        thirdStack.topAnchor.constraint(equalTo: secondStack.bottomAnchor, constant: 16).isActive = true
        fourthStack.topAnchor.constraint(equalTo: thirdStack.bottomAnchor, constant: 16).isActive = true
        fifthStack.topAnchor.constraint(equalTo: fourthStack.bottomAnchor, constant: 16).isActive = true
        fifthStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -40).isActive = true
        
        func setStack(to stack: UIStackView) {
            stack.spacing = 16
            stack.axis = .horizontal
            stack.translatesAutoresizingMaskIntoConstraints = false
            stack.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
            stack.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
