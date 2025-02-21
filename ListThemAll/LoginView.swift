//
//  LoginView.swift
//  ListThemAll
//
//  Created by Linda Dang on 21/2/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var LoginMessage = ""
    
    
    var body: some View {
        VStack {
            Text("Log In")
                .fontWeight(.heavy)
            
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
                .textContentType(.password)
            Button("Sign in") {
                loginLogic()
            }
            .padding()
            .buttonStyle(.borderedProminent)
            
            Text(LoginMessage)
                .padding()
        }
        .padding(.horizontal,20)
    }
    
    //insert the logic function here inside the struct (class)
    func loginLogic(){
        
        if username.isEmpty || password.isEmpty {
            LoginMessage = "Please enter a valid password"
        }
        else if username == "Admin" && password == "12345" {
            LoginMessage = "Login successful!"
        }
        else {
            LoginMessage = "Invalid username or password."
        }
    }
}
#Preview {
    LoginView()
}
