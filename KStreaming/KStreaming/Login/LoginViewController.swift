//
//  ViewController.swift
//  KStreaming
//
//  Created by 황민채 on 6/2/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.layer.cornerRadius = 19
        self.loginButton.layer.borderColor = UIColor(named: "main-brown")?.cgColor
        self.loginButton.layer.borderWidth = 1
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        self.view.window?.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "TabBar")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .portrait
    }
    
}

