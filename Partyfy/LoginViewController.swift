//
//  LoginViewController.swift
//  Partyfy
//
//  Created by Raul  Canul on 26/01/18.
//  Copyright © 2018 Raul  Canul. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: UI Elements
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Config UI Elements

        addBordersToLabels()
        view.setGradiantBackground(colorOne: Colors.baseColor, colorTwo: Colors.accentColor)
        configNavigationBar()
        addBordersToButton()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    func configNavigationBar() {
        
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        self.navigationController!.navigationBar.backgroundColor = UIColor.clear
    }
    
    func addBordersToLabels() {
        let border = CALayer()
        let secondBorder = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = Colors.placeholderColor.cgColor
        secondBorder.borderColor = Colors.placeholderColor.cgColor
        border.frame = CGRect(x: 0, y: self.emailTextField.frame.size.height - width, width:  self.emailTextField.frame.size.width, height: self.emailTextField.frame.size.height)
        
        secondBorder.frame = CGRect(x: 0, y: self.passwordTextField.frame.size.height - width, width:  self.passwordTextField.frame.size.width, height: self.passwordTextField.frame.size.height)
        
        border.borderWidth = width
        secondBorder.borderWidth = width
        self.emailTextField.layer.addSublayer(border)
        self.emailTextField.layer.masksToBounds = true
        
        self.passwordTextField.layer.addSublayer(secondBorder)
        self.passwordTextField.layer.masksToBounds = true
    }
    
    func addBordersToButton() {
        self.loginButton.layer.borderWidth = 1.0
        self.loginButton.layer.borderColor = Colors.whiteColor.cgColor
    }
    
    @IBAction func backView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
