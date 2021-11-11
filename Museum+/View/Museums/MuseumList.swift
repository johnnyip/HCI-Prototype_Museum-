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
                        MuseumList_Item(mseumLeft: museum, mseumRight: museums.museums[museum.id])
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
