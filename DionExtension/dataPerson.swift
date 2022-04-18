////
////  dataPerson.swift
////  DionExtension
////
////  Created by Павел Ларичев on 18.04.2022.
////
//
import Foundation

class DataPerson {
    var personArray = [PersonModel]()
    var anreyDavydov = PersonModel(name: "Андрей", surname: "Давыдов", dionURL: "https://dion.vc/event/larichevpn", division: "Государственные услуги", isFavorite: true)
    func appenedArray () {
        personArray.append(anreyDavydov)
        print(personArray)
    }
    
}





//
//class dataPerson {
//   // var person = PersonModel()
//    var personArray = [PersonModel]() = []
//
//    //var person = PersonModel(name: String, surname: String, dionURL: String, division: String, isFavorite: Bool)
//
//   
//}
//
//let DavidovAnrey = PersonModel(name: "Андрей", surname: "Давыдов", dionURL: "https://dion.vc/event/larichevpn", division: "Государственные услуги", isFavorite: true)
//
//personArray.append(DavidovAnrey)
//
//
//
////    newArray.append(newStudent)
////    newArray.append(newStudent1)
////    newArray.append(newStudent2)
////    newArray.append(newStudent3)
////    newArray
////    let sortedNewArray = newArray.sorted {$0.mark > $1.mark }
////    sortedNewArray
////    print(sortedNewArray)
//
//    
//    
//
//
