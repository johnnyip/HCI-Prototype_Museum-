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
                                        VStack{
                                            Image(exhibition.img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(exhibition.exhibitionName)
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
                                        VStack{
                                            Image(museums.exhibitions[1].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[1].exhibitionName)
                                        }
                                        VStack{
                                            Image(museums.exhibitions[3].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[3].exhibitionName)
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
                                        VStack{
                                            Image(museums.exhibitions[0].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[0].exhibitionName)
                                        }
                                        VStack{
                                            Image(museums.exhibitions[2].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[2].exhibitionName)
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
                                        VStack{
                                            Image(museums.exhibitions[0].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[0].exhibitionName)
                                            Text("Distance: ") + Text(museums.exhibitions[0].distance).fontWeight(.heavy)
                                            HStack{
                                                Text("Crowd Level:")
                                                CrowdLevelText(level: museums.exhibitions[0].crowdLevel)
                                            }

                                        }
                                        VStack{
                                            Image(museums.exhibitions[2].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[2].exhibitionName)
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
                        Menu(inMuseum_mode){
                            Button {
                                self.inMuseum_mode = "By Crowd Level"
                            } label: {
                                Text("By Crowd Level")
                                Spacer()
                                if self.inMuseum_mode == "time"{
                                    Image(systemName: "checkmark")
                                }
                            }
                                                        
                            Button {
                                self.inMuseum_mode = "By Distance"
                            } label: {
                                Text("By Distance")
                                Spacer()
                                if self.inMuseum_mode == "nearest"{
                                    Image(systemName: "checkmark")
                                }
                            }



                        }
                    }.padding(.horizontal,5)
                    
                    
                    HStack{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ScrollView(.horizontal,showsIndicators: false){
                                    HStack{
                                        VStack{
                                            Image(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].exhibitionName)
                                                Text("Distance: ") + Text(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].distance).fontWeight(.heavy)
                                                HStack{
                                                    Text("Crowd Level:")
                                                    CrowdLevelText(level: museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 1:3].crowdLevel)
                                                }

                                        }
                                        VStack{
                                            Image(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1].img)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height:150)
                                                .cornerRadius(20)
                                                .clipped()
                                            Text(museums.exhibitions[(inMuseum_mode == "By Crowd Level") ? 3:1].exhibitionName)
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
                }.padding(.horizontal,7)

                
            }
        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
            new_visitedBefore = UserDefaults.standard.bool(forKey: "new_visitedBefore")
            
        }
        
    }
}
