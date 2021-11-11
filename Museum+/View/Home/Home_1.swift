//
//  Home_1.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct Home_1: View {
    
    var body: some View {
        ScrollView{
            VStack{
            Text("Popular Museums that you have not visited")
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            }
            Home_11()
        }
        }
}

struct Home_1_Previews: PreviewProvider {
    static var previews: some View {
        Home_11()
    }
}
