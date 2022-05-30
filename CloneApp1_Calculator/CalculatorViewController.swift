//
//  CalculatorViewController.swift
//  CloneApp1_Calculator
//
//  Created by 김예훈 on 2022/05/29.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    let label = UILabel()
    
    let zero = CalculatorButton(name: "0", type: .operand)
    let one = CalculatorButton(name: "1", type: .operand)
    let two = CalculatorButton(name: "2", type: .operand)
    let three = CalculatorButton(name: "3", type: .operand)
    let four = CalculatorButton(name: "4", type: .operand)
    let five = CalculatorButton(name: "5", type: .operand)
    let six = CalculatorButton(name: "6", type: .operand)
    let seven = CalculatorButton(name: "7", type: .operand)
    let eight = CalculatorButton(name: "8", type: .operand)
    let nine = CalculatorButton(name: "9", type: .operand)
    let dot = CalculatorButton(name: ".", type: .operand)
    let multiplier = CalculatorButton(systemName: "xmark", type: .basicOperator)
    let minus = CalculatorButton(systemName: "minus", type: .basicOperator)
    let plus = CalculatorButton(systemName: "plus", type: .basicOperator)
    let divider = CalculatorButton(systemName: "divide", type: .basicOperator)
    let equal = CalculatorButton(systemName: "equal", type: .basicOperator)
    let ac = CalculatorButton(name: "AC", type: .etc)
    let change = CalculatorButton(systemName: "plus.forwardslash.minus", type: .etc)
    let percent = CalculatorButton(systemName: "percent", type: .etc)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
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
        
        setupButtons()
        
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
        label.textColor = .white
        label.font = .systemFont(ofSize: 92, weight: .light)
        label.text = "123"
        label.textAlignment = .right
        view.addSubview(label)
        
        let margins = view.layoutMarginsGuide
        label.translatesAutoresizingMaskIntoConstraints = false
        label.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
    }
    
    private func setupButtons() {
        let buttons = [zero, one, two, three, four, five, six, seven, eight, nine, dot, multiplier, minus, plus, divider, equal, ac, change, percent]
        for button in buttons {
            button.titleLabel?.font = .systemFont(ofSize: 36, weight: .regular)
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
    
//    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
//        super.traitCollectionDidChange(previousTraitCollection)
//
//        guard previousTraitCollection?.horizontalSizeClass != traitCollection.horizontalSizeClass else { return }
//        switch traitCollection.horizontalSizeClass {
//        case .compact:
//            setupConstraintForCompactEnvironment()
//        case .regular:
//            setupConstraintForRegularEnvironment()
//        case .unspecified:
//            break
//        }
//    }
//
//    private func setupConstraintForCompactEnvironment() {
//
//    }
//
//    private func setupConstraintForRegularEnvironment() {
//
//    }
}
