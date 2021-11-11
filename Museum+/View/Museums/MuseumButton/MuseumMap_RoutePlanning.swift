//
//  MuseumMap_RoutePlanning.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct MuseumMap_RoutePlanning: View {
    @ObservedObject var museums = Museums()
    
    @State var chosenExhibition:[MuseumExhibition] = []
    
    @State var modeSelect:Int = 0
    @State var selected:Bool = false
    @State var currentSelected:Int = 0;
    var body: some View {
        VStack{
            HStack{
                Picker("Picker",selection: $modeSelect.animation(.spring())) {
                    Text("List").tag(0)
                    Text("Map").tag(1)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)                
            }
            
            Spacer()
            VStack{
                if modeSelect == 0{
                    List{
                        ForEach(museums.exhibitions,id:\.self){exhibition in
                            NavigationLink {
                                ExhibitionDetail(selected: $selected,currentSelected: $currentSelected, exhibition: exhibition)
                                    .navigationBarTitle(exhibition.exhibitionName)
                            } label: {
                                VStack(alignment:.leading){
                                    Text(exhibition.exhibitionName)
                                        .bold()
                                    Text("Floor: G/F")
                                        .fontWeight(.light)
                                    Text("Estimated Crowd Level: \(exhibition.crowdLevel)")
                                        .fontWeight(.light)
                                }
                            }
                            
                        }
                    }
                    .listStyle(.plain)
                }
                else{
                    VStack{
                        HStack{
                            Text("\t\t  ")
                            NavigationLink {
                                ExhibitionDetail(selected: $selected,currentSelected: $currentSelected, exhibition: museums.exhibitions[0])
                                    .navigationBarTitle(museums.exhibitions[0].exhibitionName)
                            } label: {
                                Text(museums.exhibitions[0].exhibitionName)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(20)
                            }

                            Spacer()
                        }
                        HStack{
                            Text("  ")
                            NavigationLink {
                                ExhibitionDetail(selected: $selected,currentSelected: $currentSelected, exhibition: museums.exhibitions[1])
                                    .navigationBarTitle(museums.exhibitions[1].exhibitionName)
                            } label: {
                                Text(museums.exhibitions[1].exhibitionName)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(20)
                            }
                            Spacer()
                        }
                        HStack{
                            Text(" \t\t\t\t")
                            NavigationLink {
                                ExhibitionDetail(selected: $selected,currentSelected: $currentSelected, exhibition: museums.exhibitions[2])
                                    .navigationBarTitle(museums.exhibitions[2].exhibitionName)
                            } label: {
                                Text(museums.exhibitions[2].exhibitionName)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(20)
                            }
                            Spacer()
                        }
                        
                        HStack{
                            Text("  \t\t\t\t\t")
                            NavigationLink {
                                ExhibitionDetail(selected: $selected,currentSelected: $currentSelected, exhibition: museums.exhibitions[3])
                                    .navigationBarTitle(museums.exhibitions[3].exhibitionName)
                            } label: {
                                Text(museums.exhibitions[3].exhibitionName)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(20)
                            }
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
                }
            }
            Divider()

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
//            .frame(height:370)
        }
        .onChange(of: selected) { newValue in
            print("selected \(selected)")
            print("currentSelected \(currentSelected)")
            if selected && currentSelected != 0{
                
                chosenExhibition.append(museums.exhibitions[currentSelected-1])
                print("chosenExhibition \(chosenExhibition)")
                
                selected = false
            }
        }
    }
}

struct MuseumMap_RoutePlanning_Previews: PreviewProvider {
    static var previews: some View {
        MuseumMap_RoutePlanning()
    }
}
