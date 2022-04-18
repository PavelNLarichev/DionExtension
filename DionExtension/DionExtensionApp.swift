//
//  DionExtensionApp.swift
//  DionExtension
//
//  Created by Павел Ларичев on 12.04.2022.
//

import SwiftUI

@main

struct DionExtensionApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            TabBarView(viewRouter: viewRouter)
        }
    }
}
