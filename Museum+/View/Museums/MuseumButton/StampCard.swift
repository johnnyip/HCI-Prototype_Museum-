//
//  StampCard.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct StampCard: View {
    @ObservedObject var museums = Museums()
    @State var Exhibition1Hidden:Bool = false
    @State var Exhibition2Hidden:Bool = true
    @State var Exhibition3Hidden:Bool = true
    @State var Exhibition4Hidden:Bool = true
    
    var body: some View {
        VStack{
            VStack{
                VStack{
                    HStack{
                        Spacer()
                        Text(museums.exhibitions[0].exhibitionName)
                            .font(.system(size: 25))
                            .bold()
                        Text("(2/8)")
                            .font(.system(size: 25))
                        Spacer()
                        Image(systemName: "chevron.forward.circle")
                            .font(.system(size: 25))
                            .rotationEffect(.degrees(!Exhibition1Hidden ? 90:0))
                            .padding(.trailing)
                    }
                    .padding(7)
                    .background(Color.init("lightGrey"))
                    .cornerRadius(20)
                    .onTapGesture {
                        withAnimation {
                            Exhibition1Hidden.toggle()
                            Exhibition2Hidden=true
                            Exhibition3Hidden=true
                            Exhibition4Hidden=true
                        }
                    }
                    if !Exhibition1Hidden{
                        VStack{
                            HStack(spacing:15){
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            HStack(spacing:15){
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            
                        }
                    }
                }
                .padding([.top],5)
                .padding(.horizontal)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.vertical,7)
                
                
                VStack{
                    HStack{
                        Spacer()
                        Text(museums.exhibitions[1].exhibitionName)
                            .font(.system(size: 25))
                            .bold()
                        Text("(2/8)")
                            .font(.system(size: 25))
                        Spacer()
                        Image(systemName: "chevron.forward.circle")
                            .font(.system(size: 25))
                            .rotationEffect(.degrees(!Exhibition2Hidden ? 90:0))
                            .padding(.trailing)
                    }
                    .padding(7)
                    .background(Color.init("lightGrey"))
                    .cornerRadius(20)
                    .onTapGesture {
                        withAnimation {
                            Exhibition2Hidden.toggle()
                            Exhibition1Hidden=true
                            Exhibition3Hidden=true
                            Exhibition4Hidden=true
                        }
                    }
                    if !Exhibition2Hidden{
                        VStack{
                            HStack(spacing:15){
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            HStack(spacing:15){
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            
                        }
                    }
                }
                .padding([.top],5)
                .padding(.horizontal)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.vertical,7)
                
                
                VStack{
                    HStack{
                        Spacer()
                        Text(museums.exhibitions[2].exhibitionName)
                            .font(.system(size: 25))
                            .bold()
                        Text("(2/8)")
                            .font(.system(size: 25))
                        Spacer()
                        Image(systemName: "chevron.forward.circle")
                            .font(.system(size: 25))
                            .rotationEffect(.degrees(!Exhibition3Hidden ? 90:0))
                            .padding(.trailing)
                    }
                    .padding(7)
                    .background(Color.init("lightGrey"))
                    .cornerRadius(20)
                    .onTapGesture {
                        withAnimation {
                            Exhibition3Hidden.toggle()
                            Exhibition2Hidden=true
                            Exhibition1Hidden=true
                            Exhibition4Hidden=true
                        }
                    }
                    if !Exhibition3Hidden{
                        VStack{
                            HStack(spacing:15){
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            HStack(spacing:15){
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            
                        }
                    }
                }
                .padding([.top],5)
                .padding(.horizontal)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.vertical,7)
                
                
                VStack{
                    HStack{
                        Spacer()
                        Text(museums.exhibitions[3].exhibitionName)
                            .font(.system(size: 25))
                            .bold()
                        Text("(2/8)")
                            .font(.system(size: 25))
                        Spacer()
                        Image(systemName: "chevron.forward.circle")
                            .font(.system(size: 25))
                            .rotationEffect(.degrees(!Exhibition4Hidden ? 90:0))
                            .padding(.trailing)
                    }
                    .padding(7)
                    .background(Color.init("lightGrey"))
                    .cornerRadius(20)
                    .onTapGesture {
                        withAnimation {
                            Exhibition4Hidden.toggle()
                            Exhibition2Hidden=true
                            Exhibition3Hidden=true
                            Exhibition1Hidden=true
                        }
                    }
                    if !Exhibition4Hidden{
                        VStack{
                            HStack(spacing:15){
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "checkmark.circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            HStack(spacing:15){
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                                Image(systemName: "circle")
                                    .font(.system(size: 40))
                            }
                            .padding(.bottom)
                            
                        }
                    }
                }
                .padding([.top],5)
                .padding(.horizontal)
                .background(Color.init("lightGrey"))
                .cornerRadius(20)
                .padding(.horizontal)
                .padding(.vertical,7)
            }
            Divider()
            
            VStack{
                HStack{
                    Text("Scan NFC")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width:120,height:50)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                    Text("Scan QR Code")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width:120,height:50)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                }
                .padding(.horizontal)
                
                HStack{
                    Text("Redeem Gift")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width:120,height:50)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                    Text("Stamp Location")
                        .bold()
                        .font(.system(size: 20))
                        .frame(width:120,height:50)
                        .padding()
                        .background(Color.init("lightGrey"))
                        .cornerRadius(15)
                }
                .padding(.horizontal)

            }
            .padding()
        }
    }
}

struct StampCard_Previews: PreviewProvider {
    static var previews: some View {
        StampCard()
    }
}
