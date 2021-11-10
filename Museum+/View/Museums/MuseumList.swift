//
//  MuseumList.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct MuseumList: View {
    @ObservedObject var museums = Museums()
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(museums.museums,id:\.self){ museum in
                    if (museum.id % 2 == 1){
                        HStack(alignment:.center){
                            if (museum.id == 1){
                                NavigationLink {
                                    MuseumDetail()
                                        .navigationBarTitle(museum.name)
                                } label: {
                                    VStack{
                                        Image(museum.img_small)
                                            .resizable()
                                            .scaledToFill()
                                            .cornerRadius(30)
                                        Text(museum.name)
                                            .font(.system(size: 15))
                                            .padding(7)
                                            .multilineTextAlignment(.center)
                                            .cornerRadius(15)
                                    }
                                    .padding(5)
                                    .background(Color.init("lightGrey"))
                                    .cornerRadius(15)
                                }
                            }else{
                                
                                VStack{
                                    Image(museum.img_small)
                                        .resizable()
                                        .scaledToFill()
                                    //                                    .frame(width: 150, height:150)
                                        .cornerRadius(30)
                                    Text(museum.name)
                                        .font(.system(size: 15))
                                        .padding(7)
                                        .multilineTextAlignment(.center)
                                        .cornerRadius(15)
                                }
                                .padding(5)
                                .background(Color.init("lightGrey"))
                                .cornerRadius(15)
                            }
                            VStack{
                                Image(museums.museums[museum.id].img_small)
                                    .resizable()
                                    .scaledToFill()
                                //                                    .frame(width: 150, height:150)
                                    .cornerRadius(30)
                                Text(museums.museums[museum.id].name)
                                    .font(.system(size: 15))
                                    .padding(7)
                                    .multilineTextAlignment(.center)
                                    .cornerRadius(15)
                            }
                            .padding(5)
                            .background(Color.init("lightGrey"))
                            .cornerRadius(15)
                            
                        }
                        .padding(2)
                        
                    }
                }
                Spacer()
            }
            
            
            
        }
    }
}

struct MuseumList_Previews: PreviewProvider {
    static var previews: some View {
        MuseumList()
    }
}
