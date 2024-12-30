//
//  Test.swift
//  ToDoList
//
//  Created by Khant Phone Naing  on 30/12/2024.
//

import SwiftUI

class CounterModel: ObservableObject {
    @Published var count = 0
}

struct ParentView: View {
    @StateObject var model = CounterModel() // Parent view owns the model.

    var body: some View {
        VStack {
            Text("Count: \(model.count)")
                .font(.largeTitle)
            ChildView(model: model) // Passing the model to a child view.
        }
    }
}

struct ChildView: View {
    @ObservedObject var model: CounterModel // Child observes the model.

    var body: some View {
        VStack {
            Button("Increment") {
                model.count += 1
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ParentView() // Test the ParentView in the preview
}

