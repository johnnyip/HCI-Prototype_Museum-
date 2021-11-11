//
//  BookingButton.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct BookingButton: View {
    @ObservedObject var museums = Museums()
    @State var datePicked = Date()
    @State var TimePicked = Date(timeIntervalSince1970: 1636509600)
    
    @State var stepper1 = 0
    @State var stepper2 = 0
    @State var stepper3 = 0
    @State var stepper4 = 0
    @State var stepper5 = 0
    
    @State var chosenEventID = 0
    
    @State var hide_1:Bool = false
    @State var hide_2:Bool = true
    
    
    var body: some View {
        VStack{
            VStack{
                DatePicker(selection: $datePicked, displayedComponents: [.date]) {
                    Text("Date")
                }
                DatePicker(selection: $TimePicked, displayedComponents: [.hourAndMinute]) {
                    Text("Time")
                }
            }
            .padding(.horizontal)
            
            Divider()
            VStack{
                HStack{
                    Spacer()
                    Text("Entrance Ticket")
                        .bold()
                        .padding(.horizontal)
                    
                    Spacer()
                    Image(systemName: "chevron.forward.circle")
                        .font(.system(size: 20))
                        .rotationEffect(.degrees(!hide_1 ? 90:0))
                        .padding(.trailing)
                }
                .padding(7)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .onTapGesture {
                    withAnimation {
                        hide_1.toggle()
                        hide_2 = true
                    }
                }
                if !hide_1{
                    VStack{
                        HStack{
                            Text("Adult ($100)")
                            Spacer()
                            Stepper(value: $stepper1, in: 0...10) {
                                HStack{
                                    Spacer()
                                    Text("\(stepper1)")
                                }
                            }
                        }
                        HStack{
                            Text("Student ($50)")
                            Spacer()
                            Stepper(value: $stepper2, in: 0...10) {
                                HStack{
                                    Spacer()
                                    Text("\(stepper2)")
                                }
                            }
                        }
                        HStack{
                            Text("Child ($50)")
                            Spacer()
                            Stepper(value: $stepper3, in: 0...10) {
                                HStack{
                                    Spacer()
                                    Text("\(stepper3)")
                                }
                            }
                        }
                        HStack{
                            Text("Disability ($20)")
                            Spacer()
                            Stepper(value: $stepper4, in: 0...10) {
                                HStack{
                                    Spacer()
                                    Text("\(stepper4)")
                                }
                            }
                        }
                    }
                    .padding()
                    .background(Color.init("lightGrey"))
                    .cornerRadius(20)
                    .padding(.horizontal)
                }
            }
            .padding([.top],5)
            .background(Color.init("lightGrey"))
            .cornerRadius(20)
            .padding(.horizontal)
            .padding(.vertical,7)
            
            //Event ticket
            VStack{
                HStack{
                    Spacer()
                    Text("Event Ticket")
                        .bold()
                        .padding(.horizontal)
                    
                    Spacer()
                    Image(systemName: "chevron.forward.circle")
                        .font(.system(size: 20))
                        .rotationEffect(.degrees(!hide_2 ? 90:0))
                        .padding(.trailing)
                }
                .padding(7)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .onTapGesture {
                    withAnimation {
                        hide_2.toggle()
                        hide_1 = true
                    }
                }
                if !hide_2{
                VStack{
                    ForEach(museums.events,id:\.self){event in
                        HStack{
                            Spacer()
                            Text(event.eventName)
                                .padding(.horizontal)
                            
                            Spacer()
                            Image(systemName: "chevron.forward.circle")
                                .font(.system(size: 20))
                                .rotationEffect(.degrees((chosenEventID == event.id) ? 90:0))
                                .padding(.trailing)
                        }
                        .padding(7)
                        .background(Color.init("lightGrey2"))
                        .cornerRadius(20)
                        .onTapGesture {
                            withAnimation {
                                if chosenEventID == event.id{
                                    chosenEventID = 0
                                }else{
                                    chosenEventID = event.id
                                }
                            }
                        }
                        if chosenEventID == event.id{
                            BookingButton_EventItem(eventSchedlue: event.scheduleAndSlot, price: event.price)
                        }
                    }
                    
                }
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.vertical,7)
                }
                
            }
            .padding([.top],5)
            .background(Color.init("lightGrey"))
            .cornerRadius(20)
            .padding(.horizontal)
            
            Spacer()
            
            Text("Confirm and Pay")
                .font(.system(size: 20))
                .frame(maxWidth: .infinity)
                .padding(7)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
                .padding()
            
        }
    }
}

struct BookingButton_Previews: PreviewProvider {
    static var previews: some View {
        BookingButton()
    }
}
