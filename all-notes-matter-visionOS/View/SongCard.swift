//
//  SongCard.swift
//  all-notes-matter-visionOS
//
//  Created by Dinda Ayu Syafitri on 08/05/24.
//

import SwiftUI

struct SongCard: View {
    var isUnlocked: Bool
    var image: String

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 200)
            .cornerRadius(17)
            .overlay(content: {
                Rectangle()
                    .fill(.black)
                    .opacity(isUnlocked ? 0 : 0.5)
                    .cornerRadius(17)
            })
            .overlay(content: {
                VStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(isUnlocked ? "play-icon" : "lock-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.bottom, 50)
                }
            })
    }
}

#Preview {
    SongCard(isUnlocked: true, image: "spain")
}
