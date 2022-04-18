//
//  ViewRouter.swift
//  DionExtension
//
//  Created by Павел Ларичев on 18.04.2022.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .home
    
}


enum Page {
    case home
    case liked
    case contacts
    case user
}
