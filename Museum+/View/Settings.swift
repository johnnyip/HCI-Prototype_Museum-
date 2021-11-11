//
//  Settings.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct Settings: View {
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")
    @State var accessibilityMode:Bool = UserDefaults.standard.bool(forKey: "accessibilityMode")
    @State var new_visitedBefore:Bool = UserDefaults.standard.bool(forKey: "new_visitedBefore")
    
    var body: some View {
        Form{
            Section{
                    Picker("Picker",selection: $modeSelection.animation(.spring())) {
                        Text("New User").tag(0)
                        Text("Booked").tag(1)
                        Text("At Museum").tag(2)
                    }
                    .pickerStyle(.segmented)
                    .onChange(of: modeSelection, perform: { newValue in
                        UserDefaults.standard.set(modeSelection, forKey: "mode")
                    })
            }
            
            if (modeSelection == 0){
                Section{
                    Toggle(isOn: $new_visitedBefore) {
                        Text("Have Visit Record")
                    }
                    .onChange(of: new_visitedBefore) { newValue in
                        UserDefaults.standard.set(new_visitedBefore,forKey: "new_visitedBefore")
                    }
                    Text("Visited: Science & Art Museum")
                    Text("[Scicence Museum] Visited: Exhibition [1] [3]")
                    
                }
            }
            
            if (modeSelection == 1){
                Section{
                    Text("Booked to visit Science Museum")
                    Text("2 Entrance Ticket")
                    Text("2 Event Ticket - Flipbook Machine")
                }
            }
            if (modeSelection == 2){
                Section{
                    Text("Currently in Science Museum")
                    Text("Planned to visit Exhibition 1 3")
                    Text("Event will start at 14:00")
                }
            }

            Toggle(isOn: $accessibilityMode) {
                Text("Accessibility Mode")
            }
            .onChange(of: accessibilityMode) { newValue in
                print(accessibilityMode)
                UserDefaults.standard.set(accessibilityMode,forKey: "accessibilityMode")
                print(UserDefaults.standard.bool(forKey: "accessibilityMode"))
            }
            
            
            Button {
                modeSelection = 3
            } label: {
                Text("Staff Mode")
            }
            
            
            Section{
                Button {
                    UserDefaults.standard.set(false,forKey: "welcomeScreenShown")
                } label: {
                    Text("Reset Welcome Screen")
                }

            }

        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
