//
//  ContentView.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State var welcomeScreenShown:Bool = UserDefaults.standard.bool(forKey: "welcomeScreenShown")
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    @State var tabSelection:Int = 0
    
    var body: some View {
        if !welcomeScreenShown{
            WelcomeScreen(showWelcome: $welcomeScreenShown)
        }
        else{
        TabView(selection:$tabSelection){
            if modeSelection != 3{
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
                
            }
            else{
                NavigationView{
                    Home_3()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Dashboard")
                }
                .tabItem {
                    Label("Dashboard", systemImage:"square.stack")
                }.tag(4)

                NavigationView{
                    Bookings_Staff()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Bookings")
                }
                .tabItem {
                    Label("Bookings", systemImage:"calendar")
                }.tag(5)
                
            }
            NavigationView{
                Settings()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Scenario")
            }
            .tabItem {
                Label("Scenario", systemImage:"shareplay")
            }.tag(3)
        }
        .onAppear(perform: {
            UserDefaults.standard.set(0,forKey: "mode")
        })
        .onChange(of: tabSelection) { newValue in
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
        }
        }
    }
}

