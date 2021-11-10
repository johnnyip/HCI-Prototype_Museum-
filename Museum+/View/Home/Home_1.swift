//
//  Home_1.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct Home_1: View {
    @ObservedObject var museums = Museums()
    
    var body: some View {
        ScrollView{
            Text("Popular Museums that you have not visited")
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            
            ForEach(museums.museums,id:\.self){ museum in
                if (museum.id == 1){
                    NavigationLink {
                        MuseumDetail()
                            .navigationBarTitle(museum.name)
                    } label: {
                        VStack{
                            Image(museum.img_hori)
                                .resizable()
                                .scaledToFill()
                                .frame(height:150)
                                .cornerRadius(20)
                                .clipped()
                            Text(museum.name)
                        }
                        .padding(5)
                    }
                }else{
                    VStack{
                        Image(museum.img_hori)
                            .resizable()
                            .scaledToFill()
                            .frame(height:150)
                            .cornerRadius(20)
                            .clipped()
                        Text(museum.name)
                    }
                    .padding(5)
                    
                }
            }
            Spacer()
        }
    }
}

struct Home_1_Previews: PreviewProvider {
    static var previews: some View {
        Home_1()
    }
}
