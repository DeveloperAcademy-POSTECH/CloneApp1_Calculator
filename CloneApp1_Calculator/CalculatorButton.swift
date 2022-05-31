//
//  CalculatorButton.swift
//  CloneApp1_Calculator
//
//  Created by 김예훈 on 2022/05/29.
//
  
import UIKit

enum CalculatorType {
    case number
    case basicOperator(type: OperatorType)
    case etc
    case scientific
}

enum OperatorType: String {
    case plus
    case minus
    case divide
    case multiply
    case equal
}

class CalculatorButton: UIButton {
    
    var calculatorType: CalculatorType!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(name: String, type calculatorType: CalculatorType) {
        super.init(frame: .zero)
        self.calculatorType = calculatorType
        self.setTitle(name, for: .normal)
        self.setButton(button: self, type: calculatorType)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        if name == "0" {
            self.contentHorizontalAlignment = .leading
        } else {
            self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        }
    }
    
    init(systemName: String, type calculatorType: CalculatorType) {
        super.init(frame: .zero)
        self.calculatorType = calculatorType
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        self.setImage(UIImage(systemName: systemName, withConfiguration: config), for: .normal)
        self.setButton(button: self, type: calculatorType)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
    }
    
    private func setButton(button: UIButton, type calculatorType: CalculatorType) {
        var config = UIButton.Configuration.filled()
        config.cornerStyle = .capsule
        switch calculatorType {
        case .number:
            config.baseBackgroundColor = .darkGray
            self.setTitleColor(.white, for: .normal)
        case .basicOperator:
            config.baseBackgroundColor = .systemOrange
            self.setTitleColor(.white, for: .normal)
        case .etc:
            config.baseBackgroundColor = .lightGray
            self.setTitleColor(.black, for: .normal)
        case .scientific:
            config.baseBackgroundColor = .darkGray
            self.setTitleColor(.white, for: .normal)
        }
        button.configuration = config
    }
}
