//
//  ContentView.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    @State var tabSelection:Int = 0
    var body: some View {
        TabView(selection:$tabSelection){
            NavigationView{
                if modeSelection == 0{
                    Home_1()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Home")
                }else{
                    Home_2()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Home")
                }
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }.tag(0)
            NavigationView{
                MuseumList()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Museums")
            }
            .tabItem {
                Label("Museums", systemImage:"square.stack")
            }.tag(1)
            
            NavigationView{
                Bookings()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Bookings")
            }
            .tabItem {
                Label("Bookings", systemImage:"calendar")
            }.tag(2)
            
            NavigationView{
                Settings()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Scenario")
            }
            .tabItem {
                Label("Scenario", systemImage:"shareplay")
            }.tag(3)
        }
        .onChange(of: tabSelection) { newValue in
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
        }
    }
}

