//
//  LoginViewController.swift
//  Login MvvM
//
//  Created by Mohamed Khaled on 01/08/2023.
//

import UIKit

class LoginViewController: UIViewController, LoginDelegate {
    
    // MARK: - IBOutlet
    @IBOutlet weak var userNameTXT: UITextField!
    @IBOutlet weak var passwordTXT: UITextField!
    @IBOutlet weak var loginButton: PrimarySolidButton!
    
    // MARK: -  VARS
    var viewModel: LoginViewModel!
    
    // MARK: - View life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        viewModel = LoginViewModel()
        viewModel.delegate = self
    }
    
    // MARK: - setup method
    private func setupView() {
        loginButton.isEnabled = true
        loginButton.title = "Login"
    }
    
    @IBAction func loginButton(_ sender: Any) {
        viewModel.login(userName: userNameTXT.text, password: passwordTXT.text)
    }
    
    func loginSuccess(message: String) {
        showAlert(message: message)
    }
    
    func loginFailure(message: String) {
        showAlert(message: message)
    }
    // MARK: - Show Alert
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
