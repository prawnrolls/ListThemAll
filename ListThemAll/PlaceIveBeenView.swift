//
//  ContentView.swift
//  ListThemAll
//
//  Created by Linda Dang on 21/2/2025.
//

import SwiftUI

struct PlaceIveBeenView: View {
    @State private var placeVisited = [
        "Melbourne",
        "Sydney",
        "Emerald",
        "Hanoi",
        "Saigon",
        "Tokyo",
        "Bali",
        "Paris",
        "Rome",
        "New York",
        "Seoul",
        "Bangkok",
        "Mexico City",
        "Cape Town",
        "Istanbul",
        "Barcelona",
        "Amsterdam",
        "Berlin",
        "Prague",
        "Budapest",
        "Vienna",
        "London",
        "Moscow",
        "Beijing",
        "Shanghai",
        "Guangzhou",
        "Chengdu",
    ]
    
    var body: some View {
        NavigationStack {
            List (placeVisited, id: \.self) { place in
                HStack {
                    Image(systemName: "mappin")
                    NavigationLink(place) {
                        Text(place)
                    }
                }
            }
            .navigationTitle("Places I've been")
        }
        .listStyle(.insetGrouped)
    }
}

#Preview {
    PlaceIveBeenView()
}
