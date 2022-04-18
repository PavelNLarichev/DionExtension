//
//  FavoriteView.swift
//  DionExtension
//
//  Created by Павел Ларичев on 18.04.2022.
//

import SwiftUI

struct FavoriteView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.openURL) var openURL
    @State var show1 = true
    @State var show2 = false
    @State var showTop = false
    @State var showDetail = false
    var body: some View {
        
        
        ZStack {
            background(colorScheme == .dark ? .black : .black)
        }
        
        
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
