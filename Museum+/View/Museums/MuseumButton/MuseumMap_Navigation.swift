//
//  MuseumMap_Navigation.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct MuseumMap_Navigation: View {
    @ObservedObject var museums = Museums()
    
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("\t\t  ")
                    Text(museums.exhibitions[0].exhibitionName)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                    
                    Spacer()
                }
                HStack{
                    Text("  ")
                    Text(museums.exhibitions[1].exhibitionName)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                    Spacer()
                }
                HStack{
                    Text(" \t\t\t\t")
                    Text(museums.exhibitions[2].exhibitionName)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                    Spacer()
                }
                
                HStack{
                    Text("  \t\t\t\t\t")
                    Text(museums.exhibitions[3].exhibitionName)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                    Spacer()
                }
            }
            .padding()
            .background(
                Image("exhibitionMap")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(30)
            )
            
            HStack{
                Text("Your Route Planning")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width:300,height:20)
                    .padding()
                    .background(Color.init("lightGrey"))
                    .cornerRadius(15)

            }
            List{
                Text("Click an exhibition above, then add below")
                    .fontWeight(.ultraLight)
                ForEach(chosenExhibition,id:\.self){exhibition in
                    Text(exhibition.exhibitionName)
                        .bold()
                        
                }
                .onDelete { offsets in
                    chosenExhibition.remove(atOffsets: offsets)
                }
            }
            .listStyle(.plain)

            
            Spacer()
        }
        
    }
}

struct MuseumMap_Navigation_Previews: PreviewProvider {
    static var previews: some View {
        MuseumMap_Navigation()
    }
}
