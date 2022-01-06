//
//  LobbyViewController.swift
//  BlockGeminiTask
//
//  Created by Hosam Elnabawy on 06/01/2022.
//

import UIKit


class LobbyViewController: UIViewController {
    
    @IBOutlet weak var appBarView: LobbyAppBar!
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        appBarView.setup()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLoginPressed(_ sender: Any) {
        // Basic Navigation By StoryBoard!!
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let homeVC = storyboard.instantiateViewController(withIdentifier: AppIdentifiers.home.rawValue)
        
        navigationController?.pushViewController(homeVC, animated: true)
        
        
    }
}
