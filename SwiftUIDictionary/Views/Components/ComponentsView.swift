//
//  ComponentsView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 23/07/21.
//

import SwiftUI

struct ComponentsView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Apple Design Resources")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Design apps quickly and accurately by using Sketch, Photoshop, and XD templates, guides, and other resources.")
            LargeButton(text: "Download files")
            Spacer()
        }
        .padding(20)
    }
}

struct ComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsView()
    }
}

struct LargeButton: View {
    var text = "Download files"

    var body: some View {
        Button(action: {}) {
            Text(text)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(12)
    }
}
