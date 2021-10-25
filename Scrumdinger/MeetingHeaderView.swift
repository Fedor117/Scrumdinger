//
//  MeetingViewHeader.swift
//  Scrumdinger
//
//  Created by Fedor Valiavko on 03/09/2021.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    let scrumColor: Color
    
    private var progress: Double {
        guard secondsRemaining > 0 else {
            return 1
        }
        
        let totalSeconds = Double(secondsElapsed + secondsRemaining)
        return Double(secondsElapsed) / totalSeconds
    }
    
    private var minutesRemaining: Int {
        secondsRemaining / 60
    }
    
    private var minutesRemainingMetric: String {
        minutesRemaining == 1 ? "minute" : "minutes"
    }
    
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
                .progressViewStyle(ScrumProgressViewStyle(scrumColor: scrumColor))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds remaining")
                        .font(.caption)
                    HStack {
                        Text("\(secondsRemaining)")
                        Image(systemName: "hourglass.tophalf.fill")
                    }
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Time remaining"))
        .accessibilityValue(Text("\(minutesRemaining) \(minutesRemainingMetric)"))
        .padding([.top, .horizontal])
    }
}

struct MeetingViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180, scrumColor: DailyScrum.data[0].color)
            .previewLayout(.sizeThatFits)
    }
}