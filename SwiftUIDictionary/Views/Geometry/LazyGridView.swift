//
//  LazyGridView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 23/07/21.
//

import SwiftUI

struct LazyGridView: View {
    var body: some View {
        
        
//        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
//            ForEach(0 ..< 20) { item in
//                Rectangle()
//                    .frame(height: 100)
//            }
//        }
        
        
//        LazyVGrid(
//            columns: [GridItem(.adaptive(minimum: 80), spacing: 16)],
//            spacing: 16) {
//
//            ForEach(0 ..< 12) { item in
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.blue)
//                    .frame(height: 100)
//            }
//        }
//        .padding()
        
        
//        LazyHGrid(
//            rows: [GridItem(.adaptive(minimum: 80), spacing: 16)],
//            spacing: 12) {
//
//            ForEach(0 ..< 20) { item in
//                Rectangle().frame(width: 100)
//            }
//        }
        
        
//        ScrollView(.horizontal) {
//            LazyHGrid(
//                rows: [GridItem(.adaptive(minimum: 80), spacing: 8)],
//                spacing: 12) {
//
//                ForEach(0 ..< 20) { item in
//                    Rectangle().frame(width: 300)
//                }
//            }
//            .frame(height: 300)
//        }
        
        
        LazyVGrid(
            columns: [
                GridItem(.fixed(100), spacing: 8),
                GridItem(.fixed(160), spacing: 8),
                GridItem(.fixed(80), spacing: 8)
            ], spacing: 12) {

            ForEach(0 ..< 20) { item in
                Rectangle()
                    .frame(height: 80)
            }
        }
    }
}

struct LazyGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridView()
    }
}
