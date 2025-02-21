//
//  ListThemAllApp.swift
//  ListThemAll
//
//  Created by Linda Dang on 21/2/2025.
//

import SwiftUI

@main //front door for your app, hence setup tab view here
struct ListThemAllApp: App {
    var body: some Scene {
        WindowGroup {
            TabView { //make a tab view bar
                Tab { //create one tab button that links to the specified page
                    PlaceIveBeenView()
                } label: {
                    Image(systemName: "custom.globe.asia")
                    Text("My travel")
                }
                Tab {
                    StudentList()
                } label: {
                    Image(systemName: "person.3")
                    Text("Student List")
                }
            }
        }
    }
}
