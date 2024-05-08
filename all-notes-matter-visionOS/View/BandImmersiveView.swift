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
        //        RealityView { content in
        //            if let guitarEntity = try? await Entity(named: "fender_stratocaster"){
        //                guitarEntity.transform.translation = [0, -0.4, 0]
        //                content.add(guitarEntity)
        //            }
        //        }

        RealityView { content in
            let bandEntity = await createBandModel()
            content.add(bandEntity)

        }


    }
    private func createBandModel () async -> Entity {
        guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else {
            fatalError("Cant load band model")
        }

        return entity
    }
}

#Preview(immersionStyle: .mixed) {
    BandImmersiveView()
}
