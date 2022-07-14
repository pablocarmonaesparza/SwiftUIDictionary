//
//  GeometryEffectView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 23/07/21.
//

import SwiftUI

struct GeometryEffectView: View {
    
    @State var show = false
    @Namespace var namespace

    var body: some View {
        ZStack {
            if !show {
                ScrollView {
                    HStack {
                        VStack {
                            Text("Title").foregroundColor(.white)
                                .matchedGeometryEffect(id: "title", in: namespace)
                        }
                        .frame(width: 100, height: 100)
                        .background(
                            Rectangle().matchedGeometryEffect(id: "shape", in: namespace)
                        )
                        Rectangle()
                            .frame(width: 100, height: 100)
                        Spacer()
                    }
                    .padding(8)
                }
            } else {
                VStack {
                    Text("Title").foregroundColor(.white)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: 400)
                .background(
                    Rectangle().matchedGeometryEffect(id: "shape", in: namespace)
                )
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                show.toggle()
            }
        }
    }
}

struct GeometryEffectView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryEffectView()
    }
}
