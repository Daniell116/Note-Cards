//
//  StudyView.swift
//  Note Cards
//
//  Created by daniell Escareno on 5/14/26.
//

import SwiftUI

struct StudyView: View {
    let cards: [FlashCard]
    @State private var currentIndex = 0
    var body: some View {
        
        if cards.indices.contains(currentIndex) {
            
            VStack(spacing: 30) {
                
                FlashCardView(card: cards[currentIndex])
                
                HStack(spacing: 20) {
                    
                    Button("Don't Know") {
                        nextCard()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Button("Know") {
                        nextCard()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                
                HStack {
                    
                    Button("Previous") {
                        if currentIndex > 0 {
                            currentIndex -= 1
                        }
                    }
                    
                    Spacer()
                    
                    Text("\(currentIndex + 1) / \(cards.count)")
                    
                    Spacer()
                    
                    Button("Next") {
                        nextCard()
                    }
                }
                .padding(.horizontal)
            }
            .padding()
            
        } else {
            Text("No cards available")
        }
    }
    func nextCard() {
        if currentIndex < cards.count - 1 {
            currentIndex += 1
        }
    }
}
