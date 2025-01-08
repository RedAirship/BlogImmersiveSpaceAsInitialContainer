//
//  ImmersiveSpaceAsInitialContainerApp.swift
//  ImmersiveSpaceAsInitialContainer
//
//  Created by Paul on 24/12/24.
//

import SwiftUI

@main
struct ImmersiveSpaceAsInitialContainerApp: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
    }
}
