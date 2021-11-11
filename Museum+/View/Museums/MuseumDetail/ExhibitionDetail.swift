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
    
    @State var accessibilityMode:Bool = true
//    @State var accessibilityMode:Bool = UserDefaults.standard.bool(forKey: "accessibilityMode")
    
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
                Text("Video Introduction")
                    .bold()
                    .font(.system(size: 15))
                    .padding()
                    .background(Color.init("lightGrey"))
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                Image(systemName: "play.fill")
                    .font(.system(size: 50))
                    .padding()
                    .frame(width: 200, height: 100)
                    .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 4)
                        )
                    .padding(.top)
                if accessibilityMode{

                Text("Click to show video transcription")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                Divider()

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
                        HStack(alignment:.bottom){
                            Image(exhibit[1])
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(30)
                            Image(systemName: "plus.magnifyingglass")
                                .font(.system(size: 25))
                        }
                        if accessibilityMode{
                            Text("This is description text describing the photo and exhibit, with extra description text.\n")
                        HStack{
                            Spacer()
                            Image(systemName: "speaker.circle")
                                .font(.system(size: 40))
                        }
                        }
                        else{
                            Text("This is description text of the exhibit.\n")
                        }
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
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                }
            }
            
        }
//        .onAppear {
//            accessibilityMode = UserDefaults.standard.bool(forKey: "accessibilityMode");
//        }
    }
}

struct ExhibitionDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExhibitionDetail(selected: .constant(false),currentSelected: .constant(0), exhibition:         MuseumExhibition(id: 4, exhibitionName: "4.Sound", crowdLevel:"Very High",distance: "30m", img: "exhibition_4",description: "The basic principles of sound and its interesting features are introduced here. When the frequency of the sound happens to coincide with that of the \"Dancing Rings\", resonance occurs and make the rings dance. At the \"Vanishing Sound\" exhibit, you can even create a vacuum, which allows you to understand the medium required for the transmission of sound.",exhibits: [["Dancing Rings","exhibit4_1"],["Vanishing Sound","exhibit4_2"]]))
    }
}
