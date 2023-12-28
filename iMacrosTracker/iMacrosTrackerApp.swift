//
//  iMacrosTrackerApp.swift
//  iMacrosTracker
//
//  Created by Jonathan on 2023-12-28.
//

import SwiftUI

@main
struct iMacrosTrackerApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
