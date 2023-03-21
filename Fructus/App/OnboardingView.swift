//
//  OnboardingView.swift
//  Fructus
//
//  Created by Isaac Iniongun on 21/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: ForEach
        } //: TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
