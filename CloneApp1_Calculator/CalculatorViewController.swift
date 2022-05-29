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
        
        // 텍스트 필드
        let textField = UITextField()
        textField.textColor = .white
        textField.font = .systemFont(ofSize: 72, weight: .light)
        textField.text = "123"
        textField.textAlignment = .right
        view.addSubview(textField)
        
        let margins = view.layoutMarginsGuide
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        textField.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        
        // 5줄의 HStack
        let seven = CalculatorButton(name: "7", case: .operand)
        seven.translatesAutoresizingMaskIntoConstraints = false
        seven.widthAnchor.constraint(equalTo: seven.heightAnchor, multiplier: 1).isActive = true
        
        let eight = CalculatorButton(name: "8", case: .operand)
        eight.translatesAutoresizingMaskIntoConstraints = false
        eight.widthAnchor.constraint(equalTo: eight.heightAnchor, multiplier: 1).isActive = true
        
        let nine = CalculatorButton(name: "9", case: .operand)
        nine.translatesAutoresizingMaskIntoConstraints = false
        nine.widthAnchor.constraint(equalTo: nine.heightAnchor, multiplier: 1).isActive = true
        
        let multiplier = CalculatorButton(systemName: "xmark", case: .basicOperator)
        multiplier.translatesAutoresizingMaskIntoConstraints = false
        multiplier.widthAnchor.constraint(equalTo: multiplier.heightAnchor, multiplier: 1).isActive = true
        
        let firstStack = UIStackView(arrangedSubviews: [
            seven,
            eight,
            nine,
            multiplier
        ])
        
        view.addSubview(firstStack)
        
        firstStack.spacing = 16
        firstStack.axis = .horizontal
        firstStack.translatesAutoresizingMaskIntoConstraints = false
        firstStack.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20).isActive = true
        firstStack.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        firstStack.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        firstStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
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
