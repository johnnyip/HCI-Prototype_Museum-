//
//  Home_2.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct Home_2: View {
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")

    var body: some View {
        VStack{
            VStack(spacing:10){
                HStack{
                    Text("Your coming booking")
                    Spacer()
                }
                if modeSelection == 1{
                    HStack{
                        Text("Space Museum - 13:30")
                            .font(.system(size: 25))
                        Spacer()
                    }
                }
                HStack{
                    Text("Short Movie(20mins) - 14:50")
                        .font(.system(size: 25))
                    Spacer()
                }
            }
            .padding()
            .background(Color.init("lightGrey"))
            .cornerRadius(10)
            .padding(5)
        
            if modeSelection == 2{

                HStack{
                    Text("Current location: ").font(.system(size: 20)) + Text("Space Museum").font(.system(size: 20)).fontWeight(.heavy)
                }
                .padding()
                .background(Color.init("lightGrey"))
                .cornerRadius(10)
                .padding(5)
            }
            
            ButtonsView()
            
            Spacer()

        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
        }
    }
}

struct Home_2_Previews: PreviewProvider {
    static var previews: some View {
        Home_2()
    }
}
