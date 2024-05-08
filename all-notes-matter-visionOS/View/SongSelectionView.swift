//
//  SongSelectionView.swift
//  all-notes-matter-visionOS
//
//  Created by Dinda Ayu Syafitri on 08/05/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SongSelectionView: View {
    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Text("Song Selection")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Spacer()
            }
            NavigationStack {
                HStack(spacing: 20) {
                    Button(action: {
                        Task {
                            await openImmersiveSpace(id: "ImmersiveSpace")
                        }
//                        if immersiveSpaceIsShown {
//                            Task {
//                                await openImmersiveSpace(id: "BandImmersiveSpace")
//                            }
//                        } else {
//                            Task {
//                                await dismissImmersiveSpace()
//                            }
//                        }

                        print("click")
                    }, label: {
                        SongCard(isUnlocked: true, image: "spain")
                    })
                    SongCard(isUnlocked: true, image: "dean-town")
                    SongCard(isUnlocked: false, image: "lingus")
                    SongCard(isUnlocked: false, image: "simon")
                    SongCard(isUnlocked: false, image: "mint-jams")
                    SongCard(isUnlocked: false, image: "moon-river")
                }
                .padding(.bottom, 50)
            }
            .navigationBarBackButtonHidden()
            Spacer()
        }
        .padding(.vertical,30)
        .padding(.horizontal, 25)
        //        .onChange(of: showImmersiveSpace) { _, newValue in
        //            Task {
        //                if newValue {
        //                    switch await openImmersiveSpace(id: "ImmersiveSpace") {
        //                    case .opened:
        //                        immersiveSpaceIsShown = true
        //                    case .error, .userCancelled:
        //                        fallthrough
        //                    @unknown default:
        //                        immersiveSpaceIsShown = false
        //                        showImmersiveSpace = false
        //                    }
        //                } else if immersiveSpaceIsShown {
        //                    await dismissImmersiveSpace()
        //                    immersiveSpaceIsShown = false
        //                }
        //            }
        //        }
    }
}

#Preview(windowStyle: .automatic) {
    SongSelectionView()
}
