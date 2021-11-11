//
//  WelcomeScreen.swift
//  Museum+
//
//  Created by Johnny on 11/11/2021.
//

import SwiftUI

struct WelcomeScreen: View {
    @Binding var showWelcome:Bool
    
    @State var option:Int = 0
    @State var accessibilityMode:Bool = false
    var body: some View {
        VStack{
            Text("\n\n\n")
            Image("welcomeIcon")
                .resizable()
                .scaledToFit()
                .frame(height:200)
                .padding()
            
            Text("Prefered Language")
            
            HStack{
                Button{
                    self.option = 1
                }label:{
                    Text("中文")
                        .padding(7)
                        .padding(.vertical,10)
                        .frame(maxWidth:.infinity)
                        .background(option == 1 ? Color.accentColor:nil)
                        .foregroundColor(option == 1 ? Color.white:Color.accentColor)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.gray,lineWidth:1)
                        )
                }
                Button{
                    self.option = 2
                }label:{
                    Text("Eng")
                        .padding(7)
                        .padding(.vertical,10)
                        .frame(maxWidth:.infinity)
                        .background(option == 2 ? Color.accentColor:nil)
                        .foregroundColor(option == 2 ? Color.white:Color.accentColor)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.gray,lineWidth:1)
                        )
                }
                Button{
                    self.option = 3
                }label:{
                    Text("اللغة الأردية")
                        .padding(7)
                        .padding(.vertical,10)
                        .frame(maxWidth:.infinity)
                        .background(option == 3 ? Color.accentColor:nil)
                        .foregroundColor(option == 3 ? Color.white:Color.accentColor)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.gray,lineWidth:1)
                        )
                }
            }
            .padding()
            
            Toggle(isOn: $accessibilityMode) {
                Text("Accessibility Mode")
            }
            .padding()
            .padding(.horizontal,20)
            .onChange(of: accessibilityMode) { newValue in
                UserDefaults.standard.set(accessibilityMode,forKey: "accessibilityMode")
            }
            
            
            Spacer()
            Button {
                UserDefaults.standard.set(true,forKey: "welcomeScreenShown")
                self.showWelcome = true
            } label: {
                Text("OK")
                    .padding()
                    .frame(maxWidth:.infinity)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding(.horizontal)
            }
        }

    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(showWelcome: .constant(false))
    }
}
