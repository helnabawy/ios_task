//
//  ViewController.swift
//  BlockGeminiTask
//
//  Created by Hosam Elnabawy on 06/01/2022.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController {

    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var loginPopoupView: LoginPopupView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: SkyFloatingLabelTextField!
    
    @IBOutlet weak var passwordTextField: SkyFloatingLabelTextField!
    @IBOutlet weak var signupButton: UITextView!
    
    override var shouldAutorotate: Bool {return true}
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {return .landscapeLeft}
    override var preferredStatusBarStyle: UIStatusBarStyle {return .lightContent}
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        configScreen()
        
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func configScreen() {

        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        backgroundImageView.addBlur(10)
        loginPopoupView.setup()
        
    }

    @IBAction func onLogin(_ sender: Any) {
        
        
        UIView.animate(withDuration: 0.5) {
            self.loginPopoupView.layer.opacity = 0
        }
        
        backgroundImageView.removeBlur()
        
    }
    
}


