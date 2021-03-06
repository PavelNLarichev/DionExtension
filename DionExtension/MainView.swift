//
//  MainView.swift
//  DionExtension
//
//  Created by Павел Ларичев on 18.04.2022.
//

import SwiftUI

struct MainView: View {
   
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.openURL) var openURL
    @State var show1 = true
    @State var show2 = false
    @State var showTop = false
    @State var showDetail = false
    @State var url = "https://yandex.ru"
    
    var body: some View {
       
        Spacer()
        Text("DionExtension")
            .font(.largeTitle)
        
        
        Spacer()
        
        ScrollView(.vertical) {
            ZStack {
                //Color(showDetail && colorScheme == .dark ? .black : .white )
                   // .edgesIgnoringSafeArea(.all)
                VStack {
                   
                    
                    ZStack {
                        Spacer()
                            .frame(width: 275.0, height: 368.0)
                            .background(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) : Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                            .cornerRadius(42)
                            .shadow(radius: 35, y: 20)
                            .rotationEffect(.degrees(8))
                            .offset(x: 30, y: -30)
                            .padding(.top, 50)
                        
                        Spacer()
                            .frame(width: 275.0, height: 368.0)
                            .background(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) : Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                            .cornerRadius(42)
                            .shadow(radius: 5)
                            .rotationEffect(.degrees(-8))
                            .offset(x: -30, y: -30)
                            .padding(.top, 50)
                        
                        ZStack {
                            
                            Spacer()
                                .frame(width: 275.0, height: 368.0)
                                .background(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) : Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                                .cornerRadius(42)
                                .shadow(radius: 5)
                            
                            // Карточка выбраного объекта
                            
                            VStack {
                                if show1 == true {
                                    VStack{
                                        Image("DavidovAL")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 200, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 25))
                                            .overlay(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0))
                                        Text("Андрей Давыдов")
                                            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                            .bold()
                                           
                                    }
                                   
                                } else if show2 == true {
                                    
                                    VStack{
                                        Image("SokolovDV")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 200, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 25))
                                            .overlay(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0))
                                        Text("Дмитрий Соколов")
                                            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                            .bold()
                                           
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        //self.showDetail.toggle()
                        openURL(URL(string: "\(url)")!)
                        
                    }) {
                        Text("Присоединиться")
                            .foregroundColor(.white)
                            .frame(width: 169, height: 42)
                            .background(Color(#colorLiteral(red: 0.9803921569, green: 0.3921568627, blue: 0, alpha: 1)))
                            .cornerRadius(20)
                            .shadow(color: Color(#colorLiteral(red: 0.9803921569, green: 0.3921568627, blue: 0, alpha: 1)).opacity(0.6), radius: 10, y: 10)
                            .padding()
                        
                    }
                    
                    HStack {
                        Text("Избранное")
                            .font(.system(size: 18))
                            .bold()
                            .padding(.leading)
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 35) {
                            Button(action: {
                                url = "https://dion.vc/event/aldavydov"
                                self.show1.toggle()
                                self.show2 = false
                               
                            }) {
                                Image("DavidovAL")
                                    .resizable()
                                    .frame(width: 100.0, height: 100.0)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                   // .renderingMode(.original)
                                    .overlay(show1 ? RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color("Orange"), lineWidth: 3) : nil)
                            }
                            
                            Button(action: {
                                url = "https://dion.vc/event/sokolovdv"
                                self.show2.toggle()
                                self.show1 = false
                               
                            }) {
                                Image("SokolovDV")
                                    .resizable()
                                    .frame(width: 100.0, height: 100.0)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                   // .renderingMode(.original)
                                    .overlay(show2 ? RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color("Orange"), lineWidth: 3) : nil)
                            }
                            
                            
                            Button(action: {
                                self.show2.toggle()
                                self.show1 = false
                            }) {
                                Image("5")
                                    .renderingMode(.original)
                                    .overlay(show2 ? RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 0.9803921569, green: 0.3921568627, blue: 0, alpha: 1)), lineWidth: 3) : nil)
                            }
                            
                            
                            Button(action: {
                                
                            }) {
                                Image("1")
                                    .renderingMode(.original)
                            }
                            
                            
                            
                            Button(action: {
                                
                            }) {
                                Image("1")
                                    .renderingMode(.original)
                            }
                            
                        }
                        .padding(.horizontal)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        
                    }
                }
                
                DetailView(showDetail: $showDetail)
                    .offset(y: showDetail ? 0 : 600)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                
            }
        }
        
           
            
        }
    }

struct DetailView: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 16) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Man's Shoe")
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            Text("Nike Airmax Plus")
                                .bold()
                        }
                        Spacer()
                        Text("300$")
                            .bold()
                            .font(.system(size: 24))
                    }
                    .padding(.horizontal)
                    Text("Select Size")
                        .font(.caption)
                        .padding(.horizontal)
                    VStack(alignment: .center, spacing: 8.0) {
                        HStack(alignment: .center, spacing: 8.0) {
                            Text("UK 5.5")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                            Text("UK 6 (EU 39)")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                            Text("UK 6 (EU 40)")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                        }
                        
                        HStack(alignment: .center, spacing: 10.0) {
                            Text("UK 6.5")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                            Text("UK 7")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                            Text("UK 7.5")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                                .opacity(0.2)
                        }
                        
                        
                        HStack(alignment: .center, spacing: 10.0) {
                            Text("UK 5.5")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                            Text("UK 6 (EU 39)")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                                .opacity(0.2)
                            Text("UK 6 (EU 40)")
                                .font(.footnote)
                                .frame(width: 102, height: 41)
                                .background(Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)))
                                .cornerRadius(5)
                        }
                        
                    }
                    .padding(.leading, 30)
                    
                    Button(action: {
                        //
                    }) {
                        Text("Add to bag")
                            .foregroundColor(.white)
                            .frame(width: 321, height: 44)
                            .background(Color(#colorLiteral(red: 0.9803921569, green: 0.3921568627, blue: 0, alpha: 1)))
                            .cornerRadius(20)
                            .shadow(color: Color(#colorLiteral(red: 0.9803921569, green: 0.3921568627, blue: 0, alpha: 1)).opacity(0.6), radius: 10, y: 10)
                            .padding(.leading, 30)
                        
                    }
                    
                }
                .padding(.top, 10)
                    
                .frame(width: 383, height: 400)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                
            }
            
            
            
            Image(systemName: "xmark")
                .frame(width: 30, height: 30)
                .foregroundColor(.black)
                .offset(x: 160, y: 35)
                .onTapGesture {
                    self.showDetail = false
            }
            
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
