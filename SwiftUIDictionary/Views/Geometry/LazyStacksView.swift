//
//  LazyStacksView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 23/07/21.
//

import SwiftUI

struct LazyStacksView: View {
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 10000) { item in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(height: 100)
                            .shadow(radius: 100)
                    }
                }
                .padding()
            }
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(0 ..< 10000) { item in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(height: 100)
                            .shadow(radius: 100)
                    }
                }
                .padding()
            }
        }
    }
}

struct LazyStacksView_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacksView()
    }
}
