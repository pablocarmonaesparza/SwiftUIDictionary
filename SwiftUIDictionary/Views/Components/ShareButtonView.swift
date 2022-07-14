//
//  ShareButtonView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct ShareButtonView: View {
    var body: some View {
        Button(action: shareButton) {
            Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.black)
        }
    }
    func shareButton() {
            let url = URL(string: "https://designcode.io")
            let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)

            UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
    }
}

struct ShareButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ShareButtonView()
    }
}
