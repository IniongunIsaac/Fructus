//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Isaac Iniongun on 21/03/2023.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(.secondary)
                Spacer()
                if let content {
                    Text(content)
                } else if let linkLabel, let linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John/Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: "Developer", linkLabel: "Jostic", linkDestination: "wiki.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
