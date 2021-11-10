//
//  GeneralInformation.swift
//  Museum+
//
//  Created by Johnny on 10/11/2021.
//

import SwiftUI

struct GeneralInformation: View {
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Tel")
                    Spacer()
                    Text("2732 3232")
                }
                .padding()
                Divider()
                
                HStack{
                    Text("Fax")
                    Spacer()
                    Text("2311 2248")
                }
                .padding()
                Divider()
                HStack{
                    Text("Email")
                    Spacer()
                    Text("enquiries@hk.science.museum")
                }
                .padding()
                Divider()

            }
            HStack(alignment:.top){
                Text("Opening Hours")
                Spacer()
                VStack{
                    Text("(Today)")
                    Text("10:00 - 18:00\n")
                    Text("(Mon-Fri)")
                    Text("10:00 - 18:00\n")
                    Text("(Sat, Public Holiday)")
                    Text("10:00 - 19:00\n")
                }
            }
            .padding()
            
            Divider()
            
            HStack(alignment:.top){
                Text("Address")
                Spacer()
                VStack{
                    Text("香港九龍尖沙咀東部科學館道二號\n")
                        .multilineTextAlignment(.trailing)
                    Text("2 Science Museum Road, Tsimshatsui East, Kowloon, Hong Kong.")
                        .multilineTextAlignment(.trailing)
                }
            }
            .padding()
            
            Divider()

            Spacer()

        }
    }
}

struct GeneralInformation_Previews: PreviewProvider {
    static var previews: some View {
        GeneralInformation()
    }
}
