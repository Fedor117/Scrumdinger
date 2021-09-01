//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Fedor Valiavko on 13/08/2021.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.data
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
