//
//  MuseumDetail_Activity.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct MuseumDetail_Activity: View {
    @ObservedObject var museums = Museums()
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")

    var body: some View {
        VStack{
            if (modeSelection != 2){

                VStack{
                    HStack{
                        Text("Popular Activities")
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
                                ForEach(museums.activities,id:\.self){activity in
                                    VStack{
                                        Image(activity.img)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(height:150)
                                            .cornerRadius(20)
                                            .clipped()
                                        Text(activity.activityName)
                                            .bold()
                                        Text("Average queuing time: \(activity.waitingTime) mins")
                                            .fontWeight(.ultraLight)
                                    }
                                }
                                
                            }
                        }
                    }
                }.padding(.horizontal,7)
            }else{
                VStack{
                    HStack{
                        Text("Popular Activities")
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
                                ForEach(museums.activities,id:\.self){activity in
                                    VStack{
                                        Image(activity.img)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(height:150)
                                            .cornerRadius(20)
                                            .clipped()
                                        Text(activity.activityName)
                                            .bold()
                                        Text("Real-time queuing time: ") + Text("\(activity.waitingTime) mins").fontWeight(.heavy)
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
        }
        
    }
}
