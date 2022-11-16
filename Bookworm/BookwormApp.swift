//
//  BookwormApp.swift
//  Bookworm
//
//  Created by mitch on 11/15/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
