//
//  TLButton.swift
//  ToDoList
//
//  Created by Khant Phone Naing  on 30/12/2024.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                Text(title)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }.padding(20)
        }
    }
}

#Preview {
    TLButton(title: "Create an account", background: .green ) {
        //code. we can use the trailing colsure because the last parameter is function
    }
}
