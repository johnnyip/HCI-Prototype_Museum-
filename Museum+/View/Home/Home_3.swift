//
//  Home_3.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct Home_3: View {
    @ObservedObject var museums = Museums()
    
    var body: some View {
        ScrollView{
        VStack{
            HStack{
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
                        .font(.system(size: 23))
                        .padding(9)
                        .cornerRadius(10)
                }

                    
            }.padding(.horizontal,10)

            HStack{
                Text("General Information")
                    .font(.system(size: 20))
                    .padding()
                    .frame(height:30)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                Spacer()
            }.padding(.horizontal,10)

            VStack{
                HStack{
                    Text("Visitors currently in Museum")
                    Spacer()
                    Text("3,205")
                        .bold()
                }
                .padding(.vertical,5)
                HStack{
                    Text("Visitors booked but not yet come")
                    Spacer()
                    Text("1,303")
                        .bold()
                }
                .padding(.vertical,5)

                HStack{
                    Text("Total of Visitors today")
                    Spacer()
                    Text("9,633")
                        .bold()
                }
                .padding(.vertical,5)
            }
            .padding(5)
            .background(Color.init("lightGrey"))
            .cornerRadius(10)
            .padding(.horizontal)
            
            RealtimeData()
            
            Spacer()
        }
        }
    }
}

struct Home_3_Previews: PreviewProvider {
    static var previews: some View {
        Home_3()
    }
}
