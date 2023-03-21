//
//  ContentView.swift
//  Fructus
//
//  Created by Isaac Iniongun on 21/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { fruit in
                FruitRowView(fruit: fruit)
                    .padding(.vertical, 4)
            } //: List
            .navigationTitle("Fruits")
        } //: NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
