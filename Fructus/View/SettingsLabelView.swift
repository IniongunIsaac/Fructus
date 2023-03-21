//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Isaac Iniongun on 21/03/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var title: String
    var iconName: String
    
    var body: some View {
        HStack {
            Text(title.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: iconName)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(title: "Fructus", iconName: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
