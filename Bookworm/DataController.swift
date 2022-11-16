//
//  DataController.swift
//  Bookworm
//
//  Created by mitch on 11/15/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
