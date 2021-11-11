//
//  Bookings.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct Bookings: View {
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    @State var new_visitedBefore:Bool = UserDefaults.standard.bool(forKey: "new_visitedBefore")
    
    @State var showNew:Bool = true
    @State var showOld:Bool = false
    
    var body: some View {
        VStack{
            if modeSelection != 0{
                VStack{
                    HStack{
                        Spacer()
                        Text("Future booking (1)")
                            .font(.system(size: 20))
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.forward.circle")
                            .font(.system(size: 25))
                            .rotationEffect(.degrees(showNew ? 90:0))
                            .padding(.trailing)
                    }
                    .padding(2)
                    .background(Color.init("lightGrey"))
                    .cornerRadius(20)
                    .onTapGesture {
                        withAnimation {
                            showNew.toggle()
                            showOld = false
                        }
                    }
                    if showNew{
                        VStack{
                            VStack{
                                HStack{
                                    Text("Date")
                                    Spacer()
                                    Text("11 Nov, 2021")
                                        .bold()
                                }
                                HStack{
                                    Text("Museum")
                                    Spacer()
                                    Text("Hong Kong Science Museum")
                                        .bold()
                                }
                                
                            }
                            .padding(.vertical,5)
                            Divider()
                            VStack{
                                HStack{
                                    Text("Entrance Tickets")
                                        .bold()
                                        .font(.system(size: 20))
                                    Spacer()
                                }
                                HStack{
                                    Text("   Time Slot")
                                    Spacer()
                                    Text("13:30")
                                        .bold()
                                }
                                HStack{
                                    Text("   Quantity")
                                    Spacer()
                                    Text("2")
                                        .bold()
                                }
                                HStack{
                                    Text("   Car Park Slot Reserved")
                                    Spacer()
                                    Text("Yes")
                                        .bold()
                                }
                                HStack{
                                    Text("   Tour Guide Reserved")
                                    Spacer()
                                    Text("Yes")
                                        .bold()
                                }
                                HStack{
                                    Text("   Amount Paid")
                                    Spacer()
                                    Text("$100")
                                        .bold()
                                }
                                Text("Show Entrance Ticket")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding()
                                    .frame(maxWidth:.infinity)
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(.horizontal)
                                
                            }
                            //                    .padding(.vertical,5)
                            Divider()
                            VStack{
                                HStack{
                                    Text("Event Booking")
                                        .bold()
                                        .font(.system(size: 20))
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("   Event Name")
                                    Spacer()
                                    Text("Flipbook Machine")
                                        .bold()
                                }
                                HStack{
                                    Text("   Time Slot")
                                    Spacer()
                                    Text("14:00")
                                        .bold()
                                }
                                HStack{
                                    Text("   Seats")
                                    Spacer()
                                    Text("2")
                                        .bold()
                                }
                                HStack{
                                    Text("   Amount Paid")
                                    Spacer()
                                    Text("$200")
                                        .bold()
                                }
                                Text("Show Event Ticket")
                                    .bold()
                                    .font(.system(size: 20))
                                    .padding()
                                    .frame(maxWidth:.infinity)
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding(.horizontal)
                                
                            }
                            VStack{
                                HStack{
                                    Text("Total Amount Paid")
                                    Spacer()
                                    Text("$300")
                                        .bold()
                                }
                            }
                            .padding(.vertical,5)
                            
                        }
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(5)
                    }
                }
                .padding([.top],5)
                .padding(.horizontal,5)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .padding(.horizontal,5)
                
            }
            if !new_visitedBefore && modeSelection == 0{
                Text("No booking record to show.")
            }
            else{
                VStack{
                    HStack{
                        Spacer()
                        Text("History (2)")
                            .font(.system(size: 20))
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.forward.circle")
                            .font(.system(size: 25))
                            .rotationEffect(.degrees(showOld ? 90:0))
                            .padding(.trailing)
                    }
                    .padding(2)
                    .background(Color.init("lightGrey"))
                    .cornerRadius(20)
                    .onTapGesture {
                        withAnimation {
                            showOld.toggle()
                            showNew = false
                        }
                    }
                    if showOld{
                        ScrollView{
                            VStack{
                                VStack{
                                    HStack{
                                        Text("Date")
                                        Spacer()
                                        Text("1 Nov, 2021")
                                            .bold()
                                    }
                                    HStack{
                                        Text("Museum")
                                        Spacer()
                                        Text("Hong Kong Science Museum")
                                            .bold()
                                    }
                                    
                                }
                                .padding(.vertical,5)
                                Divider()
                                VStack{
                                    HStack{
                                        Text("Entrance Tickets")
                                            .bold()
                                            .font(.system(size: 20))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("   Time Slot")
                                        Spacer()
                                        Text("10:00")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Quantity")
                                        Spacer()
                                        Text("4")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Car Park Slot Reserved")
                                        Spacer()
                                        Text("No")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Tour Guide Reserved")
                                        Spacer()
                                        Text("Yes")
                                            .bold()
                                    }
                                    
                                    HStack{
                                        Text("   Amount Paid")
                                        Spacer()
                                        Text("$200")
                                            .bold()
                                    }
                                }
                                //                    .padding(.vertical,5)
                                Divider()
                                VStack{
                                    HStack{
                                        Text("Event Booking")
                                            .bold()
                                            .font(.system(size: 20))
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        Text("   Event Name")
                                        Spacer()
                                        Text("Robot Cubes Workshop")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Time Slot")
                                        Spacer()
                                        Text("10:30")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Seats")
                                        Spacer()
                                        Text("2")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Amount Paid")
                                        Spacer()
                                        Text("$200")
                                            .bold()
                                    }
                                }
                                VStack{
                                    HStack{
                                        Text("Total Amount Paid")
                                        Spacer()
                                        Text("$400")
                                            .bold()
                                    }
                                }
                                .padding(.vertical,5)
                                
                            }
                            .padding(5)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(5)
                            
                            VStack{
                                VStack{
                                    HStack{
                                        Text("Date")
                                        Spacer()
                                        Text("25 Oct, 2021")
                                            .bold()
                                    }
                                    HStack{
                                        Text("Museum")
                                        Spacer()
                                        Text("Hong Kong Museum of Art")
                                            .bold()
                                    }
                                    
                                }
                                .padding(.vertical,5)
                                Divider()
                                VStack{
                                    HStack{
                                        Text("Entrance Tickets")
                                            .bold()
                                            .font(.system(size: 20))
                                        Spacer()
                                    }
                                    HStack{
                                        Text("   Time Slot")
                                        Spacer()
                                        Text("12:30")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Quantity")
                                        Spacer()
                                        Text("10")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Car Park Slot Reserved")
                                        Spacer()
                                        Text("Yes")
                                            .bold()
                                    }
                                    HStack{
                                        Text("   Tour Guide Reserved")
                                        Spacer()
                                        Text("No")
                                            .bold()
                                    }
                                    
                                    HStack{
                                        Text("   Amount Paid")
                                        Spacer()
                                        Text("$1000")
                                            .bold()
                                    }
                                }
                                //                    .padding(.vertical,5)
                                VStack{
                                    HStack{
                                        Text("Total Amount Paid")
                                        Spacer()
                                        Text("$1000")
                                            .bold()
                                    }
                                }
                                .padding(.vertical,5)
                                
                            }
                            .padding(5)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(5)
                            
                        }
                        
                    }
                }
                .padding([.top],5)
                .padding(.horizontal,5)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .padding(.horizontal,5)
                
                Spacer()
            }
            
        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
            new_visitedBefore = UserDefaults.standard.bool(forKey: "new_visitedBefore")
            if modeSelection == 0{
                showOld = true
            }else{
                showOld = false
            }
        }
        
        
    }
}

struct Bookings_Previews: PreviewProvider {
    static var previews: some View {
        Bookings()
    }
}
