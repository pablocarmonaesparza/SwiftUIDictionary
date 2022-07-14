//
//  IteratingArrayView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct IteratingArrayView: View {
    
    var authors = ["Meng To", "Daniel Nisttahuz", "Mica Andreea", "Surya Anand"]
    
    var body: some View {
        VStack {
            ForEach(authors, id:\.self) {author in
                Text(author)
            }
        }
    }
}

struct IteratingArrayView_Previews: PreviewProvider {
    static var previews: some View {
        IteratingArrayView()
    }
}
