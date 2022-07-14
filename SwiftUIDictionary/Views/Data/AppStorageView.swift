//
//  AppStorageView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct AppStorageView: View {
    
    @AppStorage("themePreference") var themePreference: String = "dark"
    
    var body: some View {
        VStack {
            Text("Your theme preference is: \(themePreference).")
            Button("Change theme preference to light") {
                    themePreference = "dark"
            }
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
