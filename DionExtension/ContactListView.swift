//
//  ContactListView.swift
//  DionExtension
//
//  Created by Павел Ларичев on 18.04.2022.
//

import SwiftUI

struct ContactListView: View {
    @State var showTop = false
    
    var body: some View {
        
        Spacer()
        Text("Контакты")
            .font(.largeTitle)
           
        
        
        Spacer()
        
        VStack{
            HStack(alignment: .top, spacing: 40) {
                
                Button(action: {
                    self.showTop.toggle()
                }) {
                   
                    VStack {
                        Text("Все")
                            .foregroundColor(showTop ? Color("Orange") : .gray)
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 30, height: 4)
                            .offset(y: -10)
                            .foregroundColor(showTop ? Color("Orange") : .gray)
                        
                        
                        
                    }
                    
                }
                Button(action: {
                    //
                }) {
                    Text("Папка 1")
                }
                
                Button(action: {
                    //
                }) {
                    Text("Папка 2")
                }
                
                
              
            }.foregroundColor(.gray)
                .onAppear {
                    self.showTop = true
        }
            
            List{
                Text("Запись 1")
            }
            
        }
        
            
           
    
        
    
        
       
    }
}


struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
