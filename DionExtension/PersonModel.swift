//
//  PersonModel.swift
//  DionExtension
//
//  Created by Павел Ларичев on 18.04.2022.
//

import SwiftUI

   
    class PersonModel {
        var name : String
        var surname : String
        var dionURL : String
        var division : String
        var isFavorite : Bool
       
        init(name: String, surname : String, dionURL : String, division : String, isFavorite : Bool) {
            self.name = name
            self.surname = surname
            self.dionURL = dionURL
            self.division = division
            self.isFavorite = isFavorite
        }
}



