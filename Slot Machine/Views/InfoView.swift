//
//  InfoView.swift
//  Slot Machine
//
//  Created by Muhammad Ilham Ramadhan on 23/10/20.
//  Copyright © 2020 Muhammad Ilham Ramadhan. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Mamang Ilham")
                    FormRowView(firstItem: "Designer", secondItem: "Ilham Jago")
                    FormRowView(firstItem: "Music", secondItem: "Stafaband")
                    FormRowView(firstItem: "Website", secondItem: "ilhamJAGO.com")
                    FormRowView(firstItem: "CopyRight", secondItem: "2020 All rights reserved")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")
                }
            }
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button(action: {
                audioPlayer?.stop()
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
            .padding(.top, 30)
            .padding(.trailing, 30)
            .accentColor(.secondary)
            ,alignment: .topTrailing
        )
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem).foregroundColor(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}


