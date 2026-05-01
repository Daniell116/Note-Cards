//
//  Data.swift
//  Note Cards
//
//  Created by Edwin Tovar on 4/21/26.
//
import Foundation

struct FlashCard: Identifiable, Codable {
    var id = UUID()
    var front: String
    var back: String
}

struct FlashCardSet: Identifiable, Codable {
    var id = UUID()
    var name: String
    var cards: [FlashCard]
}


