//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Fedor Valiavko on 13/08/2021.
//

import SwiftUI

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lenghtInMinutes: Int
    var color: Color
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lenghtInMinutes: 10, color: Color("Design")),
            DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lenghtInMinutes: 5, color: Color("App Dev")),
            DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lenghtInMinutes: 1, color: Color("Web Dev"))
        ]
    }
}
