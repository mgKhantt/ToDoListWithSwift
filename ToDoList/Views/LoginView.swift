//
//  LoginView.swift
//  ToDoList
//
//  Created by Khant Phone Naing  on 26/12/2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var loginViewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subTitle: "Get this done", backgroundColor: .pink, rotationDegree: 15)
                
                //Login Form
                Form {
                    if !loginViewModel.errorMessage.isEmpty {
                        Text(loginViewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    VStack {
                        TextField("Email Adress", text: $loginViewModel.email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        SecureField("Password", text: $loginViewModel.password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TLButton(
                            title: "Login",
                            background: .blue,
                            action: {
                                loginViewModel.login()
                            }
                        )
                    }
                    .padding(17)
                }
                .offset(y: -50)
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                }
                .padding(.vertical, 15)
            }
        }
    }
}

#Preview {
    LoginView()
}
