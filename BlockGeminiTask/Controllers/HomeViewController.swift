//
//  ViewController.swift
//  BlockGeminiTask
//
//  Created by Hosam Elnabawy on 06/01/2022.
//

import UIKit
import SkyFloatingLabelTextField

class HomeViewController: UIViewController {
    
    // MARK: - OUTLETS
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var loginPopoupView: LoginPopupView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: SkyFloatingLabelTextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordTextField: SkyFloatingLabelTextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var signupButton: UITextView!
    
    @IBOutlet weak var eyePassword: UIImageView!
    
    override var shouldAutorotate: Bool {return true}
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {return .landscapeLeft}
    override var preferredStatusBarStyle: UIStatusBarStyle {return .lightContent}
    
    var pass: String = ""
    var isSecureTextEntry: Bool = true {
        didSet(newValue) {
            passwordTextField.text = newValue ? String(repeating: "*", count: pass.count) : pass
            eyePassword.image = !newValue ? UIImage.init(systemName: "eye") : UIImage(named: "eye icon")
        }
    }
    
    // MARK: - VIEW LIFE CYCLE
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configScreen()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.delegate = self
        setupGestures()
    }
    
    
    @IBAction func onLogin(_ sender: Any) {
        // TODO: check for user input
        
        // dismiss the popup
        dismissWithAnimation()
        
    }
    
    @objc func dismissScreen(sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.loginPopoupView.layer.opacity = 0
            self.dismiss(animated: true)
        }
        
    }
    
    @objc func togglePasswordVisibility(sender: Any) {
        //        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
        isSecureTextEntry = !isSecureTextEntry
    }
    
    private func configScreen() {
        
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        
        emailView.layer.cornerRadius = 3
        passwordView.layer.cornerRadius = 3
        loginButton.layer.cornerRadius = 3
        backgroundImageView.addBlur(10)
        loginPopoupView.setup()
    }
    
    private func setupGestures() {
        
        let gesture1 = UITapGestureRecognizer(target: self, action: #selector(dismissScreen(sender:)))
        gesture1.numberOfTapsRequired = 1
        backgroundImageView.isUserInteractionEnabled = true
        backgroundImageView.addGestureRecognizer(gesture1)
        
        let gesture2 = UITapGestureRecognizer(target: self, action: #selector(togglePasswordVisibility(sender:)))
        gesture2.numberOfTapsRequired = 1
        eyePassword.isUserInteractionEnabled = true
        eyePassword.addGestureRecognizer(gesture2)
    }
    
    private func dismissWithAnimation() {
        loginButton.isEnabled = false
        UIView.animate(withDuration: 0.5, delay: 0.5) {
            self.loginPopoupView.layer.opacity = 0
        }
        backgroundImageView.removeBlur()
    }
    
    
}


extension HomeViewController: UITextFieldDelegate {
    
    // replace the entered value in password field with another symbol
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        pass = pass + string
        passwordTextField.text = passwordTextField.text! + "*"
        return false
    }
}






