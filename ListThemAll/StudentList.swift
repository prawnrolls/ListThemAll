//
//  StudentList.swift
//  ListThemAll
//
//  Created by Linda Dang on 21/2/2025.
//

import SwiftUI
struct StudentList: View {
    @State private var students = [
        "Abhijeet Raj",
        "Amogh",
        "Aryan",
        "David",
        "Ivan",
        "Jonathan",
        "Mansib",
        "Oscar",
        "Patrick",
        "Thiam Yi Donovan",
        "Trivesh",
        "Wen Wei",
        "Yuwen",
        "Akansha",
        "Anushka",
        "Elly Dongyeon",
        "Heethasha",
        "Jingyi",
        "Lam",
        "Linda",
        "Mira",
        "Noor",
        "Phuc",
        "Sara",
        "Shahira",
        "Thuy Anh",
        "Tilde",
        "Yana",
        "Zhilin",
        "Allwin"
    ]
    
    var body: some View {
        NavigationStack {
            List(students, id: \.self) { student in
                HStack{
                    Image(systemName: "swift")
                        .foregroundStyle(.orange)
                    NavigationLink(student) {
                        VStack(alignment: .leading) { //contents of child view
                            Text(student)
                                .font(.headline)
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarTitle("Student List")
            .font(.title)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        LoginView()
                    } label: {
                        Image(systemName: "person.circle.fill")
                            .foregroundStyle(.orange)
                    }
                }
            }
        }
    }
}

#Preview {
    StudentList()
}
