//
//  RegisterButton.swift
//  MatchingApp
//
//  Created by Uske on 2021/02/09.
//

import UIKit

class RegisterButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet {
            self.backgroundColor = isHighlighted ? .rgb(red: 227, green: 48, blue: 78, alpha: 0.2) : .rgb(red: 227, green: 48, blue: 78)
        }
    }
    
    init(text: String) {
        super.init(frame: .zero)
        setTitle(text, for: .normal)
        backgroundColor = .rgb(red: 227, green: 48, blue: 78)
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
