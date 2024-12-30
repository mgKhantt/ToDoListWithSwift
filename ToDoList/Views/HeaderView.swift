//
//  HeaderView.swift
//  ToDoList
//
//  Created by Khant Phone Naing  on 29/12/2024.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle: String
    let backgroundColor: Color
    let rotationDegree: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(backgroundColor)
                .rotationEffect(Angle(degrees: rotationDegree))
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                Text(subTitle)
                    .foregroundStyle(.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 80)
        }
        .frame(
            width: UIScreen.main.bounds.width * 3,
            height: 350
        )
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "To Do List", subTitle: "Get this done", backgroundColor: .pink, rotationDegree: 15)
}
