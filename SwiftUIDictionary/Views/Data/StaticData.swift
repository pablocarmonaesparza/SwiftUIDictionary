//
//  StaticData.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 23/07/21.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var color: Color
}

var courses = [
    Course(title: "SwiftUI", color: Color.blue),
    Course(title: "UI Design", color: Color.red)
]

struct StaticData: View {
    var body: some View {
        List {
            ForEach(courses) { item in
                Text(item.title)
                    .padding()
                    .background(item.color)
                    .cornerRadius(10)
            }
        }
    }
}

struct StaticData_Previews: PreviewProvider {
    static var previews: some View {
        StaticData()
    }
}
