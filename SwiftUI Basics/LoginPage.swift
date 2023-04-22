//
//  LoginPage.swift
//  SwiftUI Basics
//
//  Created by Naman Alagh on 22/04/23.
//

import SwiftUI

struct LoginPage: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white.opacity(0.15))
                
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .foregroundColor(Color.black)
                        .bold()
                        .padding()
                    
                    TextField("Username",text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                    }
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("You are now logged in as \(username)"), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                }
            }
            toolbar(.hidden)
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
