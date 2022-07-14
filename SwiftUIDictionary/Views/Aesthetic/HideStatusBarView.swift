//
//  HideStatusBarView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct HideStatusBarView: View {
    @State var isHidden = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Status bar")
                    .foregroundColor(.white)
                    .statusBar(hidden: isHidden)
                Spacer()
            }
            Spacer()
        }
        .background(Color(.systemBlue).edgesIgnoringSafeArea(.bottom))
        .onTapGesture {
            withAnimation {
                self.isHidden.toggle()
            }
        }
    }
}

struct HideStatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        HideStatusBarView()
    }
}
