//
//  AudioNarration.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct AudioNarration: View {
    @ObservedObject var museums = Museums()
    @State var receiveMode:Bool = true
    
    var body: some View {
        VStack(spacing:10){
            
            VStack{
                HStack{
                    Text("Exhibition")
                    Spacer()
                    Text("1.Light")
                        .bold()
                }
                .padding(.horizontal)
                .padding(.vertical,5)
                .font(.system(size: 20))
                Divider()
                HStack{
                    Text("Exhibit Name")
                    Spacer()
                    Text("Optical Fibre")
                        .bold()
                }
                .padding(.horizontal)
                .padding(.vertical,5)
                .font(.system(size: 20))
            }
            .padding()
            .background(Color.init("lightGrey"))
            .cornerRadius(20)
            .padding(.horizontal)
                
            VStack{
                Toggle(isOn: $receiveMode) {
                    VStack{
                        Text("Auto detect track information")
//                            .font(.system(size: 20))
                            .bold()
                        Text("(with iBeacon technology)")
                    }
                }
                
                
                HStack{
                    Text("NFC")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding(.vertical,15)
                        .padding(.horizontal,40)
                        .background(Color.blue)
                        .cornerRadius(20)
                    Text("QR Code")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding(.vertical,15)
                        .padding(.horizontal,30)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                
                
            }
            .padding()
            .background(Color.init("lightGrey"))
            .cornerRadius(20)
            .padding(.horizontal)

            Divider()
            VStack{
                HStack{
                    Text("Related Exhibitions")
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

            Spacer()
            
            HStack{
                Text("Track name")
                    .font(.system(size: 20))
                    .bold()
                Spacer()
                Image(systemName: "playpause.fill")
                    .font(.system(size: 20))
                Image(systemName: "stop.fill")
                    .font(.system(size: 20))
            }
            .padding(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
            .padding(7)
            Spacer()

            
        }
    }
}

struct AudioNarration_Previews: PreviewProvider {
    static var previews: some View {
        AudioNarration()
    }
}
