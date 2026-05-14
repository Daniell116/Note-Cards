//
//  ContentView.swift
//  Note Cards
//
//  Created by daniell Escareno on 4/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var addCards = false
    @State private var groups: [CardGroup] = []
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach($groups) { $group in
                        NavigationLink {
                            GroupDetailView(group: $group)
                        } label: {
                            
                            VStack(alignment: .leading) {
                                
                                Text(group.title)
                                    .font(.headline)
                                
                                Text("\(group.cards.count) cards")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                
                .navigationBarTitle("Note Card Sets", displayMode: .inline)
                .toolbar {
                    Button {
                        groups.append(
                            CardGroup(
                                title: "New Set",
                                cards: []))
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            
        }
    }
}
#Preview {
    ContentView()
}
