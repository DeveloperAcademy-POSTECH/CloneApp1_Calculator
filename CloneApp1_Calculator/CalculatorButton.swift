//
//  CalculatorButton.swift
//  CloneApp1_Calculator
//
//  Created by 김예훈 on 2022/05/29.
//

import UIKit

enum CalculatorCase: String {
    case operand
    case basicOperator
    case etc
    case scientific
}

class CalculatorButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init(name: String, case calculatorCase: CalculatorCase) {
        super.init(frame: .zero)
        self.setTitle(name, for: .normal)
        self.setButton(button: self, case: calculatorCase)
        self.translatesAutoresizingMaskIntoConstraints = false
        if name == "0" {
            self.contentHorizontalAlignment = .leading
        } else {
            self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        }
        self.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
    }
    
    init(systemName: String, case calculatorCase: CalculatorCase) {
        super.init(frame: .zero)
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        self.setImage(UIImage(systemName: systemName, withConfiguration: config), for: .normal)
        self.setButton(button: self, case: calculatorCase)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
    }
    
    private func setButton(button: UIButton, case calculatorCase: CalculatorCase) {
        var config = UIButton.Configuration.filled()
        config.cornerStyle = .capsule
        switch calculatorCase {
        case .operand:
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
