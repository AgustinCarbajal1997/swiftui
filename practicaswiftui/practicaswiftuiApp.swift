//
//  practicaswiftuiApp.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 09/11/2023.
//

import SwiftUI

@main
struct practicaswiftuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
