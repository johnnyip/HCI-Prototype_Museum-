//
//  ButtonsView.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct ButtonsView: View {
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    
    var body: some View {
        VStack{
            HStack{
                NavigationLink {
                    AudioNarration()
                } label: {
                    Text("Audio Narration")
                        .font(.system(size: 20))
                        .frame(width:140,height:60)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                }
                if modeSelection != 2{
                    NavigationLink {
                        MuseumMap_RoutePlanning()
                    } label: {
                        Text("Museum Map & Route Planning")
                            .font(.system(size: 20))
                            .frame(width:140,height:60)
                            .padding()
                            .background(Color.init("lightGrey"))
                            .cornerRadius(15)
                    }
                }else{
                    NavigationLink {
                        MuseumMap_Navigation()
                    } label: {
                        Text("Museum Map & Navigation")
                            .font(.system(size: 20))
                            .frame(width:140,height:60)
                            .padding()
                            .background(Color.init("lightGrey"))
                            .cornerRadius(15)
                    }
                    
                }
                
                
            }
            .padding(.horizontal)
            
            HStack{
                NavigationLink {
                    StampCard()
                } label: {
                    Text("Stamp Card")
                        .font(.system(size: 20))
                        .frame(width:140,height:60)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                }
                NavigationLink {
                    RealtimeData()
                } label: {
                    Text("Real-Time Data")
                        .font(.system(size: 20))
                        .frame(width:140,height:60)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                }
            }
            .padding(.horizontal)
            
            HStack{
                NavigationLink {
                    BookingButton()
                } label: {
                    Text("Ticket/Event Booking")
                        .font(.system(size: 20))
                        .frame(width:140,height:60)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                }
                NavigationLink {
                    GeneralInformation()
                } label: {
                    Text("General Information")
                        .font(.system(size: 20))
                        .frame(width:140,height:60)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                }
            }
            .padding(.horizontal)
            
            if modeSelection == 2{
                Button(action: {
                    print("NFC Clicked")
                }, label: {
                    Text("NFC Reader")
                        .font(.system(size: 20))
                        .frame(width:300,height:20)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                })
            }
            
        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
