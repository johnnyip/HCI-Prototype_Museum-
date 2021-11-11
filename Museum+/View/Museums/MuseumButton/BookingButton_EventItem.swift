//
//  BookingButton_EventItem.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct BookingButton_EventItem: View {
    @State var eventSchedlue:[[String]]
    @State var price:String
    
    @State var stepper = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(eventSchedlue,id:\.self){schedule in
                HStack{
                    VStack(alignment:.leading){
                        Text("Time: ").bold() + Text(schedule[0])
                        Text("Slot: ").bold() + Text(schedule[1])
                        Text("Lang: ").bold() + Text(schedule[2])
                        Text("Price: ").bold() + Text(price)
                    }
                    Spacer()
                    Stepper(value: $stepper, in: 0...10) {
                        HStack{
                            Spacer()
                            Text("\(stepper)")
                        }
                    }
                }
                Divider()
            }
        }

    }
}
