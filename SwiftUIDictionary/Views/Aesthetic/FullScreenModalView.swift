//
//  FullScreenModalView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct FullScreenModalView: View {
    @State var showModal = false
    
    var body: some View {
        Button(action: { showModal = true }) {
            Text("My Button")
        }
        .fullScreenCover(isPresented: $showModal) {
            ModalView()
        }
    }
}

struct FullScreenModalView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenModalView()
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Close Modal")
                    .foregroundColor(.white)
                Spacer()
            }
            Spacer()
        }
        .background(Color(.systemBlue).ignoresSafeArea())
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
