//
//  LinkFromTextView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct LinkFromTextView: View {
    var body: some View {
        HStack (spacing: 0){
            Text("You agree to our ")
            
            Text("Terms ")
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https://designcode.io/terms")!)
                }
                .foregroundColor(Color(.systemBlue))
            
            Text("and ")
            
            Text("Privacy policy")
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https://designcode.io/privacy")!)
                }
                .foregroundColor(Color(.systemBlue))
            
            Text(".")
        }
    }
}

struct LinkFromTextView_Previews: PreviewProvider {
    static var previews: some View {
        LinkFromTextView()
    }
}
