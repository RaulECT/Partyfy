//
//  ViewController.swift
//  Partyfy
//
//  Created by Raul  Canul on 26/01/18.
//  Copyright © 2018 Raul  Canul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: UI Elements
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var resgisterButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradiantBackground(colorOne: Colors.baseColor, colorTwo: Colors.accentColor)
        
        // MARK: Buttons Configuration
        self.loginButton.layer.borderWidth = 1.0
        self.loginButton.layer.borderColor = Colors.whiteColor.cgColor
        
        self.resgisterButton.layer.borderWidth = 1.0
        self.resgisterButton.layer.borderColor = Colors.whiteColor.cgColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


}

extension UIView {
    func setGradiantBackground( colorOne: UIColor, colorTwo: UIColor ) {
        let gradiantLayer = CAGradientLayer()
        gradiantLayer.frame = bounds
        gradiantLayer.colors = [ colorOne.cgColor, colorTwo.cgColor ]
        
        gradiantLayer.locations = [ 0.0, 1.0 ]
        
        gradiantLayer.startPoint = CGPoint( x:0.0,y: 0.0)
        gradiantLayer.endPoint = CGPoint(x:1.0, y:1.0)
        
        layer.insertSublayer(gradiantLayer, at: 0)
    }
}



