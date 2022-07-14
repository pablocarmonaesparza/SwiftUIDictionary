//
//  FromatDayView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI

struct FromatDayView: View {
    
    let today = Date().formatDate()
    var body: some View {
        
        Text(today)

    }
}

struct FromatDayView_Previews: PreviewProvider {
    static var previews: some View {
        FromatDayView()
    }
}

extension Date {
        func formatDate() -> String {
            let dateFormatter = DateFormatter()
//            dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d, YYYY")
            dateFormatter.setLocalizedDateFormatFromTemplate("MMM, YY")
            return dateFormatter.string(from: self)
        }
}
