//
//  HoverEffectView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 23/07/21.
//

import SwiftUI

struct HoverEffectView: View {
    @State var isHover = false
    
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Hover Effect")
            }
            .padding()
            .contentShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .hoverEffect()
            
            Text("Hover Effect")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .trim(from: isHover ? 0 : 1, to: 1)
                        .stroke(Color.black.opacity(1), lineWidth: 1)
                )
                .scaleEffect(isHover ? 1.2 : 1)
                .animation(.spring())
                .onHover { hover in
                    isHover = hover
                }
        }
    }
}

struct HoverEffectView_Previews: PreviewProvider {
    static var previews: some View {
        HoverEffectView()
    }
}
