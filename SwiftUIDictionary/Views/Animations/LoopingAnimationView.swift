//
//  LoopingAnimationView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct LoopingAnimationView: View {
    @State var appear = false

        var body: some View {
            Circle()
                .trim(from: 0.2, to: 1)
                .stroke(Color(.systemBlue), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                .frame(width: 44, height: 44)
                .rotationEffect(Angle(degrees: appear ? 360 : 0))
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                .onAppear {
                    appear = true
                }
        }
}

struct LoopingAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LoopingAnimationView()
    }
}
