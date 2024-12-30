//
//  RegisterView.swift
//  ToDoList
//
//  Created by Khant Phone Naing  on 26/12/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    @State var name = ""
    
    var body: some View {
        
        HeaderView(title: "Register", subTitle: "Start organizing todos", backgroundColor: .yellow, rotationDegree: -15)
        
        Spacer()
        
        Form {
            VStack {
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TLButton(
                    title: "Create an account",
                    background: .green
                ) {
                    print("Name: \(name)")
                }
            }
            .padding(17)
        }
        .offset(y: -50)
    }
}

#Preview {
    RegisterView()
}
