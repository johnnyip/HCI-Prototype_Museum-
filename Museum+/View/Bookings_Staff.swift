//
//  Bookings_Staff.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct Bookings_Staff: View {
    @ObservedObject var museums = Museums()
    @State var datePicked = Date()
    @State var TimePicked = Date(timeIntervalSince1970: 1636509600)
    @State var allDay:Bool = false

    var body: some View {
        ScrollView{
            VStack{
                Menu {
                    ForEach(museums.museums,id:\.self){museum in
                        Button {
                            print("Hi")
                        } label: {
                            Text(museum.name)
                                .font(.system(size: 20))
                        }
                    }

                } label: {
                    Text("Hong Kong Science Museum")
                        .font(.system(size: 20))
                        .padding(9)
                        .cornerRadius(10)
                }

                DatePicker(selection: $datePicked, displayedComponents: [.date]) {
                    Text("Date")
                }
                if !allDay{
                    DatePicker(selection: $TimePicked, displayedComponents: [.hourAndMinute]) {
                        Text("Time Slot")
                    }
                }
                Toggle(isOn: $allDay) {
                    Text("All Day")
                }
            }
            .padding(.horizontal)

            Divider()
            
            VStack{
                    VStack{
                        VStack{
                            HStack{
                                Text("Entrance")
                                    .bold()
                                    .font(.system(size: 20))
                                Spacer()
                            }
                            HStack{
                                Text("   Entrance Booking")
                                Spacer()
                                Text("2,300")
                                    .bold()
                            }
                            HStack{
                                Text("   Max Capacity")
                                Spacer()
                                Text("50,000")
                                    .bold()
                            }
                            HStack{
                                Text("   Car Park Slot Reserved")
                                Spacer()
                                Text("133/300")
                                    .bold()
                            }
                            HStack{
                                Text("   Tour Guide Reserved")
                                Spacer()
                                Text("20")
                                    .bold()
                            }

                        }
                        //                    .padding(.vertical,5)
                        Divider()
                        VStack{
                            HStack{
                                Text("Event")
                                    .bold()
                                    .font(.system(size: 20))
                                Spacer()
                            }
                            
                            ForEach(museums.events,id: \.self){event in
                                VStack{
                                    HStack(alignment:.top){
                                        Text("   Event Name")
                                        Spacer()
                                        Text(event.eventName)
                                            .bold()
                                            .multilineTextAlignment(.trailing)
                                    }
                                    .padding(.vertical,2)
                                    
                                    HStack{
                                        Text("   Number of bookings")
                                        Spacer()
                                        Text("\(event.id * 30)")
                                            .bold()
                                            .multilineTextAlignment(.trailing)
                                    }

                                    
                                    HStack{
                                        Text("   Booking %")
                                        Spacer()
                                        Text("\(event.id * 20)%")
                                            .bold()
                                            .multilineTextAlignment(.trailing)
                                    }

                                        Divider()
                                    
                                }
//                                .padding(.vertical,3)

                            }

                        }
                        
                    }
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(5)
            }
            .padding([.top],5)
            .padding(.horizontal,5)
            .background(Color.init("lightGrey"))
            .cornerRadius(20)
            .padding(.horizontal,5)

            
            Spacer()
        }
    }
}

struct Bookings_Staff_Previews: PreviewProvider {
    static var previews: some View {
        Bookings_Staff()
    }
}
