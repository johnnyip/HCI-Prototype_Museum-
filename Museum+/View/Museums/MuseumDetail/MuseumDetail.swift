//
//  MuseumDetail.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct MuseumDetail: View {
    @ObservedObject var museums = Museums()
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")

    var body: some View {
        ScrollView{
            ButtonsView()
            
            MuseumDetail_Exhibition()
            MuseumDetail_Activity()
            MuseumDetail_Event()
            
            
            
        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
        }
    }
}

struct MuseumDetail_Previews: PreviewProvider {
    static var previews: some View {
        MuseumDetail()
    }
}
