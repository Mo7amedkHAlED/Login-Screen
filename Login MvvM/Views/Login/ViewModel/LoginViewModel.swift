//
//  LoginViewModel.swift
//  Login MvvM
//
//  Created by Mohamed Khaled on 06/08/2023.
//

import Foundation

// MARK: - Login protocol
protocol LoginDelegate: AnyObject {
    func loginSuccess(message: String)
    func loginFailure(message: String)
}

// MARK: - Login View Model
class LoginViewModel {
    weak var delegate: LoginDelegate?
    
    // MARK: - Login Method
    func login(userName: String?, password: String?) {
        guard let userName = userName, let password = password else { return }
        
        if userName.isEmpty == true && password.isEmpty == true {
            delegate?.loginFailure(message: "Please enter both username and password.")
            return
        }
        
        if userName == "Mohamed@gmail.com" && password == "12345" {
            delegate?.loginSuccess(message: "Welcome Mohamed")
            return
        }
        
        delegate?.loginFailure(message: "Invalid username or password.")
    }
}
