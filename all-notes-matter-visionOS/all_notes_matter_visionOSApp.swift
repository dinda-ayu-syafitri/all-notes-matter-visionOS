//
//  all_notes_matter_visionOSApp.swift
//  all-notes-matter-visionOS
//
//  Created by Dinda Ayu Syafitri on 08/05/24.
//

import SwiftUI

@main
struct all_notes_matter_visionOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
