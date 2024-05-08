//
//  all_notes_matter_visionOSApp.swift
//  all-notes-matter-visionOS
//
//  Created by Dinda Ayu Syafitri on 08/05/24.
//

import SwiftUI

@main
struct all_notes_matter_visionOSApp: App {
    @State var immersionType:ImmersionStyle = .mixed
    var body: some Scene {
        WindowGroup(id: "SongSelection") {
            SongSelectionView()
        }

//        WindowGroup(id: "BandImmersive") {
//            BandImmersiveView()
//
//        }.windowStyle(.volumetric)

        ImmersiveSpace(id: "BandImmersiveSpace") {
            BandImmersiveView()
        }
        .immersionStyle(selection: $immersionType, in: .mixed)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
