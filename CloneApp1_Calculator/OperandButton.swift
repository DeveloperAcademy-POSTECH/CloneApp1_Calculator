//
//  OperandButton.swift
//  CloneApp1_Calculator
//
//  Created by 김예훈 on 2022/05/27.
//

import UIKit

@IBDesignable class OperandButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setButton()
    }
    
    @IBInspectable var content: Int {
        
        get {
            return Int(titleLabel?.text ?? "") ?? 0
        }
        
        set {
            setTitle(titleLabel?.text ?? "", for: .normal)
        }
        
    }
    
    func setButton() {
        backgroundColor = .systemGroupedBackground
        // compatibleWith 확인해보기
        titleLabel?.font = .preferredFont(forTextStyle: .title3, compatibleWith: nil)
        titleLabel?.textColor = .white
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
