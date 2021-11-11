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
        VStack(spacing:0){
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

            
            Spacer()
        }
    }
}

struct RealtimeData_Previews: PreviewProvider {
    static var previews: some View {
        RealtimeData()
    }
}
