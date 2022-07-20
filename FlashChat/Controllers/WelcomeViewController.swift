//
//  WelcomeViewController.swift
//  FlashChat
//
//  Created by I9orila T on 18.06.2022.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        titleLabel.text = K.appName
        
        
    }
    

}
