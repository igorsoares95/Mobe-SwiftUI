//
//  ContentView.swift
//  Mobe
//
//  Created by Igor Soares on 10/11/19.
//  Copyright © 2019 Igor Soares. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var username: String = ""
  @State var password: String = ""
  
  var body: some View {
    ZStack {
      Color.purple
      VStack {
        Text("Mobe")
          .font(.title)
          .bold()
          .foregroundColor(.white)
                
        TextField("Username", text: $username)
          .frame(height: 40)
          .frame(width: UIScreen.main.bounds.width - 40)
          .border(Color.white, width: 2)
          .cornerRadius(5)
          .background(Color.clear)
          .accentColor(Color.green)
        
        SecureField("Password", text: $password)
          .frame(height: 40)
          .frame(width: UIScreen.main.bounds.width - 40)
          .border(Color.white, width: 2)
          .cornerRadius(5)
          .background(Color.clear)
        
        Button(action: { print("Button clicked") }) {
          Text("Esqueceu sua senha?")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 30)
        }.padding(.bottom, 20)
        
        Button(action: { print("Button clicked") }) {
          Text("ENTRAR")
            .font(.headline)
            .frame(height: 60)
            .frame(width: UIScreen.main.bounds.width - 40)
            .foregroundColor(.white)
            .background(Color.purple)
          }
          .clipped()
          .shadow(color: Color.black, radius: 3, x: 1, y: 1)
      }
    }.edgesIgnoringSafeArea(.all)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
