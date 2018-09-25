//
//  CardView.swift
//  AutoLayoutDemo
//
//  Created by Liguo Jiao on 25/09/18.
//  Copyright © 2018 Liguo Jiao. All rights reserved.
//

import UIKit
import KeepLayout

class CardView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        let card = UIView()
        card.backgroundColor = .white
        card.layer.cornerRadius = 8.0
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOffset = CGSize(width: 3.5, height: 3.5)
        card.layer.shadowRadius = 8.0
        card.layer.shadowOpacity = 0.5
        card.layer.masksToBounds = false
        self.addSubview(card)
        card.keepVerticalInsets.equal = 30.keepValue
        card.keepHorizontalInsets.equal = 60.keepValue
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
