//
//  TimeFormatting.swift
//  iMacrosTracker
//
//  Created by Jonathan on 2023-12-28.
//

import Foundation

func calcTimeSince(date: Date) -> String  {
    let minutes = Int(-date.timeIntervalSinceNow)/60
    let hours = minutes/60
    let days = hours/24
    
    if minutes < 120 {
        return "\(minutes) minutes ago"
    } else if minutes >= 120 && hours < 48 {
        return "\(hours) hours ago"
    } else {
        return "\(days) days ago"
    }
}
