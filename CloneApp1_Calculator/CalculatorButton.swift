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
        self.titleLabel?.font = .preferredFont(forTextStyle: .largeTitle, compatibleWith: nil)
        var config = UIButton.Configuration.filled()
        config.cornerStyle = .capsule
        switch calculatorCase {
        case .operand:
            config.baseBackgroundColor = .darkGray
            self.titleLabel?.textColor = .white
        case .basicOperator:
            config.baseBackgroundColor = .systemOrange
            self.titleLabel?.textColor = .white
        case .etc:
            config.baseBackgroundColor = .lightGray
            self.titleLabel?.textColor = .black
        case .scientific:
            config.baseBackgroundColor = .darkGray
            self.titleLabel?.textColor = .white
        }
        self.configuration = config
    }
}
