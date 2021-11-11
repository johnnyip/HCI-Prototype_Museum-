//
//  MuseumList_Item.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct MuseumList_Item: View {
    @State var mseumLeft:Museum
    @State var mseumRight:Museum
    
    var body: some View {
        HStack(alignment:.center){
            if (mseumLeft.id == 1){
                NavigationLink {
                    MuseumDetail()
                        .navigationBarTitle(mseumLeft.name)
                } label: {
                    VStack{
                        Image(mseumLeft.img_small)
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                        Text(mseumLeft.name)
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
                    Image(mseumLeft.img_small)
                        .resizable()
                        .scaledToFill()
                    //                                    .frame(width: 150, height:150)
                        .cornerRadius(30)
                    Text(mseumLeft.name)
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
                Image(mseumRight.img_small)
                    .resizable()
                    .scaledToFill()
                //                                    .frame(width: 150, height:150)
                    .cornerRadius(30)
                Text(mseumRight.name)
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

