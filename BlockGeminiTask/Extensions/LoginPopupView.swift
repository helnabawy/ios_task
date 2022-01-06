//
//  LoginPopupView.swift
//  BlockGeminiTask
//
//  Created by Hosam Elnabawy on 06/01/2022.
//

import UIKit


class LoginPopupView: UIView {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    func setup() {
        
//        View Gradient Colors
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [UIColor(red: 7/255, green: 21/255, blue: 43/255, alpha: 1.0).cgColor, UIColor(red: 13/255, green: 34/255, blue: 66/255, alpha: 1.0).cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
        self.layer.insertSublayer(gradient, at: 0)
        
//        View Box Shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.36
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowRadius = 21
    }
}
