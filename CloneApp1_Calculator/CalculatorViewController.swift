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
        textField.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        
        // 버튼 (수학기호(가로모드), 숫자+., C/AC +/- &, 기본연산자) 4개 변종 - 기본 버튼 만들고 델리게이트로 해보자
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
