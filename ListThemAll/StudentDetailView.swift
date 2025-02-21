//
//  StudentDetailView.swift
//  ListThemAll
//
//  Created by Linda Dang on 21/2/2025.
//

import SwiftUI

struct StudentDetailView: View {
    let student: String //accepts a student name that was selected from your list
    
    var body: some View {
        VStack{
            Spacer()
            Text("Student Name:")
                .font(.headline)
            Text(student)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.blue)
            Spacer()
        }
        .padding()
    }
    }
#Preview {
    StudentDetailView(student: "Linda")
}
