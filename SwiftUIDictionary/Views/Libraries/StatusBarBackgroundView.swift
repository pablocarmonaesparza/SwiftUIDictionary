//
//  StatusBarBackgroundView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI
import SwiftUITrackableScrollView

struct StatusBarBackgroundView: View {
    @State private var scrollViewContentOffset: CGFloat = .zero

        var body: some View {
            ZStack(alignment: .top) {
                Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(.all)

                TrackableScrollView(.vertical, showIndicators: true, contentOffset: $scrollViewContentOffset) {
                    Text("Hello world!")
                        .padding()
                }

                Rectangle()
                    .foregroundColor(.white)
                    .opacity(scrollViewContentOffset > 16 ? 1 : 0)
                    .animation(.easeIn)
                    .ignoresSafeArea()
                    .frame(height: 0)
            }
        }
    }

struct StatusBarBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarBackgroundView()
    }
}
