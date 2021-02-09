//
//  CardInfoLabel.swift
//  MatchingApp
//
//  Created by Uske on 2021/01/31.
//

import UIKit

class CardInfoLabel: UILabel {
    
    // nopeとgoodのラベル
    init(text: String, textColor: UIColor) {
        super.init(frame: .zero)
        
        font = .boldSystemFont(ofSize: 45)
        self.text = text
        self.textColor = textColor
        
        layer.borderWidth = 3
        layer.borderColor = textColor.cgColor
        layer.cornerRadius = 10
        
        textAlignment = .center
        alpha = 0
    }
    
    // その他のtextColorが白のラベル
    init(text: String, font: UIFont) {
        super.init(frame: .zero)
        self.font = font
        textColor = .white
        self.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
