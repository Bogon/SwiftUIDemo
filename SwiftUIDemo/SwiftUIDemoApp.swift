//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by 繁华奢品 on 2024/4/26.
//

import SwiftUI
import SwiftData

@main
struct SwiftUIDemoApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
//            ContentView()
            ZStackViewDemo()
        }
        .modelContainer(sharedModelContainer)
    }
}
