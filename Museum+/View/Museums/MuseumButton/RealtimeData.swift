//
//  RealtimeData.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct RealtimeData: View {
    @ObservedObject var museums = Museums()
    
    var body: some View {
        ScrollView{
            VStack(spacing:0){
                HStack(alignment:.center){
                    HStack{
                        VStack(spacing:5){
                            HStack{
                                Text("Entrance Box Office")
                                Spacer()
                                Text("10 Mins")
                            }
                            Divider()
                            
                        }
                        .padding()
                    }
                    .font(.system(size: 20))
                }
                
                HStack{
                    Text("Exhibition Crowdedness")
                        .font(.system(size: 20))
                        .padding()
                        .frame(height:30)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(10)
                    Spacer()
                }.padding(.horizontal,10)
                HStack(alignment:.center){
                    HStack{
                        VStack(spacing:5){
                            HStack{
                                Text("Exhibition Name")
                                    .bold()
                                    .font(.system(size: 20))
                                Spacer()
                                Text("Crowdedness")
                                    .bold()
                                    .font(.system(size: 20))
                            }
                            Divider()
                            
                            ForEach(museums.exhibitions,id: \.self){exhibition in
                                HStack{
                                    Text(exhibition.exhibitionName)
                                    Spacer()
                                    CrowdLevelText(level: exhibition.crowdLevel)
                                }
                                Divider()
                            }
                            
                        }
                        .padding()
                    }
                    .font(.system(size: 20))
                }
                
                Divider()
                
                HStack{
                    Text("Activities Queuing Time")
                        .font(.system(size: 20))
                        .padding()
                        .frame(height:30)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(10)
                    Spacer()
                }.padding(.horizontal,10)
                HStack(alignment:.center){
                    HStack{
                        VStack(spacing:5){
                            HStack{
                                Text("Activity Name")
                                    .bold()
                                    .font(.system(size: 20))
                                Spacer()
                                Text("Queuing Time")
                                    .bold()
                                    .font(.system(size: 20))
                            }
                            Divider()
                            ForEach(museums.activities,id: \.self){activity in
                                HStack{
                                    Text(activity.activityName)
                                    Spacer()
                                    Text("\(activity.waitingTime) mins")
                                }
                                Divider()
                            }
                            
                        }
                        .padding()
                    }
                    .font(.system(size: 20))
                }
                Divider()
                HStack{
                    Text("Car Park Slot")
                        .font(.system(size: 20))
                        .padding()
                        .frame(height:30)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(10)
                    Spacer()
                }.padding(.horizontal,10)
                
                
                HStack(alignment:.center){
                    HStack{
                        VStack(spacing:5){
                            HStack{
                                Text("Car Park Level")
                                    .bold()
                                    .font(.system(size: 20))
                                Spacer()
                                Text("Slot Left")
                                    .bold()
                                    .font(.system(size: 20))
                            }
                            Divider()
                            HStack{
                                Text("B1")
                                Spacer()
                                Text("20/100")
                            }
                            Divider()
                            HStack{
                                Text("B2")
                                Spacer()
                                Text("60/100")
                            }
                            Divider()
                            HStack{
                                Text("B3")
                                Spacer()
                                Text("100/100")
                            }
                            Divider()
                            
                        }
                        .padding()
                    }
                    .font(.system(size: 20))
                }
                
                
                
                Spacer()
            }
        }
    }
}

struct RealtimeData_Previews: PreviewProvider {
    static var previews: some View {
        RealtimeData()
    }
}
