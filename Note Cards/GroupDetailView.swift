//
//  GroupDetailView.swift
//  Note Cards
//
//  Created by stephanie rocha marquez on 5/12/26.
//

import SwiftUI

struct GroupDetailView: View {
    @Binding var group: CardGroup
    var body: some View {
        ScrollView {
            VStack {
                Text("Set Title")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                TextField("Enter title...", text: $group.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                NavigationLink(destination: StudyView(cards: group.cards)) {

                    Text("Study All")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Button(action: {
                    let newCard = FlashCard(question: "", answer: "")
                    group.cards.append(newCard)
                }) {
                    Text("Add New Card")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                Divider()
                ForEach(group.cards) { card in
                    
                    NavigationLink(destination: FlashCardView(card: card)) {
                        
                        VStack(alignment: .leading) {
                            
                            Text(card.question)
                                .font(.headline)
                            
                            Text("Tap to study")
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                }
                
                ForEach($group.cards) { $card in
                    VStack(alignment: .leading, spacing: 10) {
                        
                        TextField("Question", text: $card.question)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Answer", text: $card.answer)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding()
                    .background(Color.blue.opacity(0.05))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.bottom, 15)
                }
                
                
                .padding(.horizontal)
                .padding()
                
            }
            .navigationTitle("Edit Cards")
        }
    }
}
#Preview {
    GroupDetailView(group: .constant(
        CardGroup(
            title: "",
            cards: [
                FlashCard(
                    question: "",
                    answer: ""
                )
            ]
        )
    )
)
}
