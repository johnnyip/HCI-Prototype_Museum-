//
//  MuseumDetail_new.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct MuseumDetail_Exhibition: View {
    @ObservedObject var museums = Museums()
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    
    @State var new_visitedBefore:Bool = UserDefaults.standard.bool(forKey: "new_visitedBefore")
    @State var new_mode:Bool = true
    @State var inMuseum_mode:String = "By Crowd Level"
    
    var body: some View {
        VStack{
            if (modeSelection != 2){
                if (!new_visitedBefore){
                    VStack{
                        HStack{
                            Text("Exhibitions")
                                .font(.system(size: 20))
                                .padding()
                                .frame(height:30)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(10)
                            Spacer()
                        }.padding(.horizontal,10)
                        
                        HStack{
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack{
                                    ForEach(museums.exhibitions,id:\.self){exhibition in
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: exhibition)
                                                .navigationBarTitle(exhibition.exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(exhibition.img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(exhibition.exhibitionName)
                                                .bold()
                                        }
                                        }
                                    }
                                    
                                }
                            }
                        }
                    }.padding(.horizontal,7)
                }else{
                    if (new_mode){
                        VStack{
                            HStack{
                                Text("Exhibitions Not Yet Visited")
                                    .font(.system(size: 20))
                                    .padding()
                                    .frame(height:30)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                Spacer()
                                
                                Text("Visited")
                                    .padding(5)
                                    .background(!new_mode ? Color.accentColor:nil)
                                    .foregroundColor(!new_mode ? Color.white:Color.accentColor)
                                    .cornerRadius(10)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            self.new_mode.toggle()
                                        }
                                    }
                                
                                
                            }.padding(.horizontal,10)
                            
                            HStack{
                                ScrollView(.horizontal,showsIndicators: false){
                                    HStack{
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[1])
                                                .navigationBarTitle(museums.exhibitions[1].exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(museums.exhibitions[1].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[1].exhibitionName)
                                                .bold()
                                        }
                                        }
                                            NavigationLink {
                                                ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[3])
                                                    .navigationBarTitle(museums.exhibitions[3].exhibitionName)
                                            } label: {

                                        VStack{
                                            Image(museums.exhibitions[3].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[3].exhibitionName)
                                                .bold()
                                        }
                                            }
                                        
                                        
                                    }
                                }
                            }
                        }.padding(.horizontal,7)
                    }else{
                        VStack{
                            HStack{
                                Text("Exhibitions You Have Visited")
                                    .font(.system(size: 20))
                                    .padding()
                                    .frame(height:30)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                Spacer()
                                Text("Visited")
                                    .padding(5)
                                    .background(!new_mode ? Color.accentColor:nil)
                                    .foregroundColor(!new_mode ? Color.white:Color.accentColor)
                                    .cornerRadius(10)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            self.new_mode.toggle()
                                        }
                                    }
                                
                            }.padding(.horizontal,10)
                            
                            HStack{
                                ScrollView(.horizontal,showsIndicators: false){
                                    HStack{
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[0])
                                                .navigationBarTitle(museums.exhibitions[0].exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(museums.exhibitions[0].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[0].exhibitionName)
                                                .bold()
                                        }
                                        }
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[2])
                                                .navigationBarTitle(museums.exhibitions[2].exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(museums.exhibitions[2].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[2].exhibitionName)
                                                .bold()
                                        }
                                        }
                                        
                                        
                                    }
                                }
                            }
                        }.padding(.horizontal,7)
                        
                    }
                    
                }
            }
            else{
                VStack{
                    HStack{
                        Text("Your Planned Route")
                            .font(.system(size: 20))
                            .padding()
                            .frame(height:30)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(10)
                        Spacer()
                    }.padding(.horizontal,10)
                    
                    HStack{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ScrollView(.horizontal,showsIndicators: false){
                                    HStack{
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[0])
                                                .navigationBarTitle(museums.exhibitions[0].exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(museums.exhibitions[0].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[0].exhibitionName)
                                                .bold()
                                            Text("Distance: ") + Text(museums.exhibitions[0].distance).fontWeight(.heavy)
                                            HStack{
                                                Text("Crowd Level:")
                                                CrowdLevelText(level: museums.exhibitions[0].crowdLevel)
                                            }
                                        }
                                        }
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[2])
                                                .navigationBarTitle(museums.exhibitions[2].exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(museums.exhibitions[2].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[2].exhibitionName)
                                                .bold()
                                            Text("Distance: ") + Text(museums.exhibitions[2].distance).fontWeight(.heavy)
                                            HStack{
                                                Text("Crowd Level:")
                                                CrowdLevelText(level: museums.exhibitions[2].crowdLevel)
                                            }
                                            
                                        }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }.padding(.horizontal,7)
                
                VStack{
                    HStack{
                        Text("Exhibition Not Yet Visited")
                            .font(.system(size: 15))
                            .padding(5)
                            .frame(height:30)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(10)
                        Spacer()
                        Menu("Sort By"){
                            Button {
                                self.inMuseum_mode = "By Crowd Level"
                            } label: {
                                Text("Crowd Level")
                                Spacer()
                                if self.inMuseum_mode == "By Crowd Level"{
                                    Image(systemName: "checkmark")
                                }
                            }
                            
                            Button {
                                self.inMuseum_mode = "By Distance"
                            } label: {
                                Text("Distance")
                                Spacer()
                                if self.inMuseum_mode == "By Distance"{
                                    Image(systemName: "checkmark")
                                }
                            }
                            Button {
                                self.inMuseum_mode = "By Popularity"
                            } label: {
                                Text("Popularity")
                                Spacer()
                                if self.inMuseum_mode == "By Popularity"{
                                    Image(systemName: "checkmark")
                                }
                            }

                        }
                        .padding()
                    }.padding(.horizontal,5)
                    
                    
                    HStack{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ScrollView(.horizontal,showsIndicators: false){
                                    HStack{
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3])
                                                .navigationBarTitle(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].exhibitionName)
                                                .bold()
                                            Text("Distance: ") + Text(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].distance).fontWeight(.heavy)
                                            HStack{
                                                Text("Crowd Level:")
                                                CrowdLevelText(level: museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].crowdLevel)
                                            }
                                        }
                                        }
                                        NavigationLink {
                                            ExhibitionDetail(selected: .constant(false),currentSelected: .constant(10), exhibition: museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1])
                                                .navigationBarTitle(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1].exhibitionName)
                                        } label: {

                                        VStack{
                                            Image(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1].exhibitionName)
                                                .bold()
                                            Text("Distance: ") + Text(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1].distance).fontWeight(.heavy)
                                            
                                            HStack{
                                                Text("Crowd Level:")
                                                CrowdLevelText(level: museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1].crowdLevel)
                                            }
                                            
                                        }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }.padding(.horizontal,7)
                
                
            }
        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
            new_visitedBefore = UserDefaults.standard.bool(forKey: "new_visitedBefore")
            
        }
        
    }
}
