//
//  MuseumDetail_Event.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct MuseumDetail_Event: View {
    @ObservedObject var museums = Museums()
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Events")
                        .font(.system(size: 20))
                        .padding()
                        .frame(height:30)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(10)
                    Spacer()
                }.padding(.horizontal,10)
                
                HStack{
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(museums.events,id:\.self){event in
                                NavigationLink {
                                    EventDetail(chosenEvent: event)
                                } label: {
                                    VStack{
                                        Image(event.img)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(height:150)
                                            .cornerRadius(20)
                                            .clipped()
                                        Text(event.eventName).bold()
                                        Text("Next timeslot: ") + Text("\(event.scheduleAndSlot[0][0])").fontWeight(.light)

                                        Text("Language: ") + Text("\(event.scheduleAndSlot[0][2])").fontWeight(.light)
                                        
                                        Text("Availability: ") + Text("\(event.scheduleAndSlot[0][1])").fontWeight(.light)
                                        Text("Duration: ") + Text("\(event.length) mins").fontWeight(.light)

                                        Text("Fee: ") + Text("\(event.price)").fontWeight(.light)

                                }
                                }

                        }
                    }
                }
            }.padding(.horizontal,7)
        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
        }
        
    }
}
}
