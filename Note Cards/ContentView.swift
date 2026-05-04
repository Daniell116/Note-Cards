//
//  ContentView.swift
//  Note Cards
//
//  Created by daniell Escareno on 4/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var addCards = false
    @State private var cards: [Card] = []
    var body: some View {
        NavigationView {
            VStack {
                List {
                    // create each card
                    ForEach($cards) { $card in
                        NoteCardView(question: $card.question, answer: $card.answer)
                    }
                }
            }
            
            .navigationBarTitle("Note Card Sets", displayMode: .inline)
            .toolbar {
                Button {
                    cards.append(Card(question: "", answer: ""))
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
       
    }
}

#Preview {
    ContentView()
}
