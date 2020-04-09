//
//  RegistrationViewController.swift
//  CoLocate
//
//  Created by NHSX.
//  Copyright © 2020 NHSX. All rights reserved.
//

import UIKit
import Logging

class RegistrationViewController: UIViewController, Storyboarded {
    static let storyboardName = "Onboarding"
    
    @IBOutlet var registerButton: PrimaryButton!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""

        if #available(iOS 13, *) {
            activityIndicator.style = .medium
        }
    }

    @IBAction func didTapRegister(_ sender: UIButton) {
        self.performSegue(withIdentifier: "unwindFromRegistration", sender: self)
    }
}

fileprivate let maxRegistrationSecs = 30.0
fileprivate let logger = Logger(label: "ViewController")