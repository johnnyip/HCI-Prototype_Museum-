//
//  CrowdLevelText.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct CrowdLevelText: View {
    @State var level:String
    var body: some View {
        if (level == "Low"){
            Text("Low")
                .padding(.horizontal,5)
                .background(Color.green)
                .cornerRadius(5)
        }
        else if (level == "Medium"){
            Text("Medium")
                .padding(.horizontal,5)
                .background(Color.yellow)
                .cornerRadius(5)

        }else if (level == "High"){
            Text("High")
                .padding(.horizontal,5)
                .background(Color.red)
                .cornerRadius(5)

        }else if (level == "Very High"){
            Text("Very High")
                .padding(.horizontal,5)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(5)

        }
        
    }
}

