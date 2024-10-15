//
//  DexThreeApp.swift
//  DexThree
//
//  Created by Mark Santoro on 10/15/24.
//

import SwiftUI

@main
struct DexThreeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
