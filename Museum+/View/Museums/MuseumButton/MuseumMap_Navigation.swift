//
//  MuseumMap_Navigation.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct MuseumMap_Navigation: View {
    @ObservedObject var museums = Museums()
    
    @State var modeSelect:Int = 0
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Picker("Picker",selection: $modeSelect.animation(.spring())) {
                        Text("Museum").tag(0)
                        Text("Car Park").tag(1)
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                    
                }
            }
            if modeSelect == 0{
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
                        
                        
                        ForEach(museums.exhibitions,id:\.self){exhibition in
                            VStack{
                                HStack{
                                    Text(exhibition.exhibitionName)
                                        .bold()
                                    Spacer()
                                    VStack(alignment:.trailing){
                                        Text("Distance: ") + Text(exhibition.distance).fontWeight(.heavy)
                                        HStack{
                                            Text("Crowd Level:")
                                            CrowdLevelText(level: exhibition.crowdLevel)
                                        }
                                    }
                                }
                            }
                            
                        }
                        
                        
                        
                        
                    }
                    .listStyle(.plain)
                }
            }
            else{
                ScrollView{
                    Text("Your car park slot is at ")                        .font(.system(size: 25))+Text("56").fontWeight(.heavy)                        .font(.system(size: 25))
                    Image("carParkFloorPlan")
                        .resizable()
                        .frame(height:400)
                    Text("Navigate to my Reserved Slot")
                        .padding()
                        .frame(maxWidth:.infinity)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                    Text("Navigate to an Empty Slot")
                        .padding()
                        .frame(maxWidth:.infinity)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                    Text("When car park is full")
                    
                    Text("Navigate to nearest car park (0.5KM)")
                        .padding()
                        .frame(maxWidth:.infinity)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                }
            }
            
            Spacer()
        }
        
    }
}

struct MuseumMap_Navigation_Previews: PreviewProvider {
    static var previews: some View {
        MuseumMap_Navigation()
    }
}
