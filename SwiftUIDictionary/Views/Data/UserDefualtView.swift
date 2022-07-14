//
//  UserDefualtView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct UserDefualtView: View {
    let savedEmail = UserDefaults.standard.string(forKey: "email")

     var body: some View {
        Text(savedEmail ?? "")
             .padding()
             .onAppear() {
                 let userEmail = "stephanie@email.com"
                 UserDefaults.standard.set(userEmail, forKey: "email")
             }
     }
 }

struct UserDefualtView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefualtView()
    }
}
