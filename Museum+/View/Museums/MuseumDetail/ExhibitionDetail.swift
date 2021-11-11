//
//  ExhibitionDetail.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct ExhibitionDetail: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selected:Bool
    @Binding var currentSelected:Int
    
    @State var exhibition:MuseumExhibition
    var body: some View {
        VStack{
            
            ScrollView{
                VStack(alignment:.leading){
                    Text("Average Crowd Level: \n") + Text(exhibition.crowdLevel).bold()
                    Text("\nDescription: \n\(exhibition.description)")
                }
                .padding()
                .background(Color.init("lightGrey"))
                .cornerRadius(10)
                .padding()
                Text("Exhibitions")
                    .bold()
                    .font(.system(size: 15))
                    .padding()
                    .background(Color.init("lightGrey"))
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                ForEach(exhibition.exhibits,id:\.self){exhibit in
                    VStack{
                        Text(exhibit[0])
                            .bold()
                        Image(exhibit[1])
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                    }
                    .padding()
                }
                
                
                VStack{
                    ForEach(exhibition.exhibits,id:\.self){exhibit in
                        Text("")
                    }
                }
            }
            
            Spacer()
            if currentSelected != 10{
                Button {
                    selected = true
                    currentSelected = exhibition.id
                    dismiss()
                } label: {
                    Text("Add to Route Planning")
                        .font(.system(size: 25))
                        .frame(maxWidth: .infinity)
                        .padding(7)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                }
            }
            
        }
    }
}

struct ExhibitionDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExhibitionDetail(selected: .constant(false),currentSelected: .constant(0), exhibition:         MuseumExhibition(id: 4, exhibitionName: "4.Sound", crowdLevel:"Very High",distance: "30m", img: "exhibition_4",description: "The basic principles of sound and its interesting features are introduced here. When the frequency of the sound happens to coincide with that of the \"Dancing Rings\", resonance occurs and make the rings dance. At the \"Vanishing Sound\" exhibit, you can even create a vacuum, which allows you to understand the medium required for the transmission of sound.",exhibits: [["Dancing Rings","exhibit4_1"],["Vanishing Sound","exhibit4_2"]]))
    }
}
