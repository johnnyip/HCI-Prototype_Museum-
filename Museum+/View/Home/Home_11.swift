//
//  Home_11.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct Home_11: View {
    @ObservedObject var museums = Museums()
    @State var new_visitedBefore:Bool = UserDefaults.standard.bool(forKey: "new_visitedBefore")
    var body: some View {
        VStack{
        ForEach(museums.museums,id:\.self){ museum in
            if (!new_visitedBefore && museum.id == 1){
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
            }else if (!new_visitedBefore) || ( new_visitedBefore && (museum.id != 1 && museum.id != 3)){
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
            }
        .onAppear {
            new_visitedBefore = UserDefaults.standard.bool(forKey: "new_visitedBefore")

        }
    }
}

struct Home_11_Previews: PreviewProvider {
    static var previews: some View {
        Home_11()
    }
}
