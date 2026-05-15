//
//  Data.swift
//  Note Cards
//
//  Created by Edwin Tovar on 4/21/26.
//
import Foundation

// Helps with structs and identify them in other views
struct FlashCard: Identifiable, Codable {
    var id = UUID()
    var question: String
    var answer: String
    var known: Bool? = nil
}

struct CardGroup: Identifiable, Codable {
    var id = UUID()
    var title: String
    var cards: [FlashCard]
}



