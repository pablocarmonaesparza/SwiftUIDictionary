//
//  RemoteImagesView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct RemoteImagesView: View {
    
    let myPhotoUrl = URL(string: "https://picsum.photos/200/300")!
    
    var body: some View {
        WebImage(url: myPhotoUrl)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
    }
}

struct RemoteImagesView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImagesView()
    }
}
