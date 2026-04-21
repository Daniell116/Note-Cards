//
//  ContentView.swift
//  Note Cards
//
//  Created by daniell Escareno on 4/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isfillped = false
    @State private var addCards = false
    var body: some View {
        NavigationView {
            VStack {
                List {
                    
                }
                // incase needed
            }
            
            .navigationBarTitle("Note Card Sets", displayMode: .inline)
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                addCards = true
            }, label: {
                Image(systemName: "plus")
            }))
                
            }
        }
    }


#Preview {
    ContentView()
}
