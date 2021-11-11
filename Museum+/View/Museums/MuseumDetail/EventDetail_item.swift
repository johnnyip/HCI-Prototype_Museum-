//
//  EventDetail_item.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct EventDetail_item: View {
    @State var event:[String]
    @State var length:Int
    @State var price:String
    
    var body: some View {
        VStack{
            HStack{
                Text("Time: ")
                    .bold()
                Spacer()
                Text(event[0])
            }
            HStack{
                Text("Availability")
                    .bold()
                Spacer()
                Text(event[1])
            }
            HStack{
                Text("Language")
                    .bold()
                Spacer()
                Text(event[2])
            }
            HStack{
                Text("Duration")
                    .bold()
                Spacer()
                Text("\(length) mins")
            }
            HStack{
                Text("Price")
                    .bold()
                Spacer()
                Text(price)
            }
        }
        .padding()
            .padding(.horizontal)
            .background(Color.init("lightGrey"))
            .cornerRadius(15)

    }
}
