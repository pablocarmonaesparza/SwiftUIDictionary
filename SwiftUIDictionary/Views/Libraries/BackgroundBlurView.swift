//
//  BackgroundBlurView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 23/07/21.
//

import SwiftUI
import SwiftUIX

struct BackgroundBlurView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemGreen)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .ignoresSafeArea()
            VisualEffectBlurView(blurStyle: .light)
                .ignoresSafeArea()
                .frame(width: 300, height: 400)
                .cornerRadius(22)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(lineWidth: 0.5).fill(Color.white))
                .shadow(color: Color.black.opacity(0.5), radius: 6, x: 6, y: 6)
                .shadow(color: Color.white.opacity(0.5), radius: 6, x: -6, y: -6)
        }
    }
}

struct BackgroundBlurView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBlurView()
    }
}
