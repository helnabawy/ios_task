//
//  ViewController.swift
//  BlockGeminiTask
//
//  Created by Hosam Elnabawy on 06/01/2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    override var shouldAutorotate: Bool {return true}
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        
        UIDevice.current.setValue(value, forKey: "orientation")
        
    }
    
    


}

