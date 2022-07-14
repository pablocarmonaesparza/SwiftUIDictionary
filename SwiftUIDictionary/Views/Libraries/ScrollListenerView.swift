//
//  ScrollListenerView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI
import SwiftUITrackableScrollView

struct ScrollListenerView: View {
    @State private var scrollViewContentOffset = CGFloat(0)

    var body: some View {
        TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
            Text("\(scrollViewContentOffset)")
                .onChange(of: scrollViewContentOffset, perform: { value in
                    print("scrollViewContentOffset", scrollViewContentOffset)
                    // Do something
                })
        }
    }
}

struct ScrollListenerView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollListenerView()
    }
}
