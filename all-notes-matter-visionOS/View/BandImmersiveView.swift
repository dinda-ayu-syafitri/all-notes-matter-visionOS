//
//  BandImmersiveView.swift
//  all-notes-matter-visionOS
//
//  Created by Dinda Ayu Syafitri on 08/05/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct BandImmersiveView: View {
    var body: some View {
        RealityView { content in
            if let guitarEntity = try? await Entity(named: "fender_stratocaster"){
                guitarEntity.transform.translation = [0, -0.4, 0]
                content.add(guitarEntity)
            }
        }
    }
}

#Preview(immersionStyle: .mixed) {
    BandImmersiveView()
}
