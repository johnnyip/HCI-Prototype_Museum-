//
//  EventDetail.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct EventDetail: View {
    @State var chosenEvent:MuseumEvent
    @State var datePicked = Date()
    
    @State var filterOption:Int = 0
    
    var body: some View {
        VStack{
            
            VStack{
                Text(chosenEvent.eventName)
                    .bold()
                    .padding()
                    .background(Color.init("lightGrey"))
                    .cornerRadius(15)
                DatePicker(selection: $datePicked, displayedComponents: [.date]) {
                    Text("Date")
                        .bold()
                }
                
                
                HStack{
                    Text("Language Filter")
                        .bold()
                    Spacer()
                    Picker("Picker",selection: $filterOption.animation(.spring())) {
                        Text("Off").tag(0)
                        Text("Chinese").tag(1)
                        Text("English").tag(2)
                    }
                    .pickerStyle(.segmented)
                }
            }
            .padding()
            .background(Color.init("lightGrey"))
            .cornerRadius(20)
            .padding(5)
            
            ScrollView{
                ForEach(chosenEvent.scheduleAndSlot,id:\.self){event in
                    
                    if (filterOption == 0) || (filterOption==1 && event[2]=="Chinese") || (filterOption==2 && event[2]=="English"){
                        
                        EventDetail_item(event: event,length: chosenEvent.length, price: chosenEvent.price)
                    }
                        
                    }
                    
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
    
    struct EventDetail_Previews: PreviewProvider {
        static var previews: some View {
            EventDetail(chosenEvent: MuseumEvent(id: 1, eventName: "Robot Cubes Workshop", scheduleAndSlot: [["10:30","10/100","English"],["12:30","10/100","Chinese"],["14:30","10/100","English"],["16:30","10/100","Chinese"]],price: "$100", img: "event_1",length: 2)
            )
        }
    }
