//
//  ViewController.swift
//  BlockGeminiTask
//
//  Created by Hosam Elnabawy on 06/01/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var loginPopoupView: LoginPopupView!
    @IBOutlet weak var loginButton: UIButton!
    
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
        
        
//        loginButton.backgroundColor = UIColor(red: 29/255, green: 47/255, blue: 144/255, alpha: 1)
    }


}


