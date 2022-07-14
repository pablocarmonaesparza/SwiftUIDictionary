//
//  HideKeyboardView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct HideKeyboardView: View {
    
    @State var email = ""
    
    var body: some View {
        VStack {
                TextField("Email address", text: $email)
                SecureField("Password", text: $email)
                Button(action: {
                }) {
                        Text("Sign in")
                                .fontWeight(.semibold)
                }
            }
            .onTapGesture {
                    hideKeyboard()
            }
    }
}

struct HideKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        HideKeyboardView()
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
