//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Fedor Valiavko on 13/08/2021.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.data)
        }
    }
}
