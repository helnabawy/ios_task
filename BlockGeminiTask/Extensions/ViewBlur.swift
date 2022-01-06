//
//  ViewBlur.swift
//  BlockGeminiTask
//
//  Created by Hosam Elnabawy on 06/01/2022.
//

import UIKit


protocol Bluring {
    func addBlur(_ alpha: CGFloat)
}

extension Bluring where Self: UIView {
    func addBlur(_ alpha: CGFloat = 0.5) {
        // create effect
        let effect = UIBlurEffect(style: .dark)
        let effectView = UIVisualEffectView(effect: effect)

        // set boundry and alpha
        effectView.frame = self.bounds
        effectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        effectView.alpha = alpha

        self.addSubview(effectView)
    }
    
    func removeBlur() {
        for view in self.subviews {
            if view is UIVisualEffectView {
                UIView.animate(withDuration: 0.5, delay: 0.2) {
                    view.alpha = 0
                }
            }
        }
    }
}

extension UIView: Bluring {}
