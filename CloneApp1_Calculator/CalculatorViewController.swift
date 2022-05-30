//
//  CalculatorViewController.swift
//  CloneApp1_Calculator
//
//  Created by 김예훈 on 2022/05/29.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var leftOperand = ""
    
    var label: UILabel!
    
    var zero: CalculatorButton!
    var one: CalculatorButton!
    var two: CalculatorButton!
    var three: CalculatorButton!
    var four: CalculatorButton!
    var five: CalculatorButton!
    var six: CalculatorButton!
    var seven: CalculatorButton!
    var eight: CalculatorButton!
    var nine: CalculatorButton!
    var dot: CalculatorButton!
    var multiplier: CalculatorButton!
    var minus: CalculatorButton!
    var plus: CalculatorButton!
    var divider: CalculatorButton!
    var equal: CalculatorButton!
    var ac: CalculatorButton!
    var change: CalculatorButton!
    var percent: CalculatorButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setupButtons()
        setupLabel()
        
        let margins = view.layoutMarginsGuide
        let firstStackView = UIStackView(arrangedSubviews: [ac, change, percent, divider])
        let secondStackView = UIStackView(arrangedSubviews: [seven, eight, nine, multiplier])
        let thirdStackView = UIStackView(arrangedSubviews: [four, five, six, minus])
        let fourthStackView = UIStackView(arrangedSubviews: [one, two, three, plus])
        let fifthInnetStackView = UIStackView(arrangedSubviews: [dot, equal])
        fifthInnetStackView.spacing = 16
        let fifthStackView = UIStackView(arrangedSubviews: [zero, fifthInnetStackView])
        let stackViews = [firstStackView, secondStackView, thirdStackView, fourthStackView, fifthStackView]
        
        for stackView in stackViews {
            view.addSubview(stackView)
            setStackView(to: stackView)
        }
        
        firstStackView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        secondStackView.topAnchor.constraint(equalTo: firstStackView.bottomAnchor, constant: 16).isActive = true
        thirdStackView.topAnchor.constraint(equalTo: secondStackView.bottomAnchor, constant: 16).isActive = true
        fourthStackView.topAnchor.constraint(equalTo: thirdStackView.bottomAnchor, constant: 16).isActive = true
        fifthStackView.topAnchor.constraint(equalTo: fourthStackView.bottomAnchor, constant: 16).isActive = true
        fifthStackView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -40).isActive = true
    }
}

extension CalculatorViewController {
    
    private func setupLabel() {
        self.label = UILabel()
        self.label.textColor = .white
        self.label.font = .systemFont(ofSize: 92, weight: .light)
        self.label.text = "0"
        self.label.textAlignment = .right
        view.addSubview(self.label)
        
        let margins = view.layoutMarginsGuide
        label.translatesAutoresizingMaskIntoConstraints = false
        label.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
    }
    
    private func setupButtons() {
        
        zero = CalculatorButton(name: "0", type: .number)
        one = CalculatorButton(name: "1", type: .number)
        two = CalculatorButton(name: "2", type: .number)
        three = CalculatorButton(name: "3", type: .number)
        four = CalculatorButton(name: "4", type: .number)
        five = CalculatorButton(name: "5", type: .number)
        six = CalculatorButton(name: "6", type: .number)
        seven = CalculatorButton(name: "7", type: .number)
        eight = CalculatorButton(name: "8", type: .number)
        nine = CalculatorButton(name: "9", type: .number)
        dot = CalculatorButton(name: ".", type: .number)
        
        multiplier = CalculatorButton(systemName: "xmark", type: .basicOperator(type: .multiply))
        minus = CalculatorButton(systemName: "minus", type: .basicOperator(type: .minus))
        plus = CalculatorButton(systemName: "plus", type: .basicOperator(type: .plus))
        divider = CalculatorButton(systemName: "divide", type: .basicOperator(type: .divide))
        equal = CalculatorButton(systemName: "equal", type: .basicOperator(type: .equal))
        
        ac = CalculatorButton(name: "AC", type: .etc)
        change = CalculatorButton(systemName: "plus.forwardslash.minus", type: .etc)
        percent = CalculatorButton(systemName: "percent", type: .etc)
        
        let buttons = [zero, one, two, three, four, five, six, seven, eight, nine, dot, multiplier, minus, plus, divider, equal, ac]
        for button in buttons {
            if let button = button {
                button.titleLabel?.font = .systemFont(ofSize: 36, weight: .regular)
                button.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
            }
        }
    }
    
    private func setStackView(to stackView: UIStackView) {
        let margins = view.layoutMarginsGuide
        stackView.spacing = 16
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
    }
    
    @objc func tapButton(_ sender: UIButton) {
        guard let calculatorButton = sender as? CalculatorButton else { return }
        guard let right = sender.title(for: .normal), let left = self.label.text else {return}
        switch calculatorButton.calculatorType {
        case .number:
            tapNumberButton(left, right)
        case .basicOperator(let type):
            tapOperatorButton(right, type: type)
        case .etc:
            tapACButton()
        default:
            tapACButton()
        }
    }
    
    private func tapNumberButton(_ left: String , _ right: String) {
        if left == "0" {
            self.label.text = right
        } else {
            self.label.text = left + right
        }
    }
    
    private func tapOperatorButton(_ value: String, type: OperatorType) {
        switch type {
        case .plus:
            print("미 구현")
        case .minus:
            print("미 구현")
        case .divide:
            print("미 구현")
        case .multiply:
            print("미 구현")
        case .equal:
            print("미 구현")
        }
    }
    
    private func tapACButton() {
        self.label.text = "0"
    }
}
