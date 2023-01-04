//
//  WelcomeScreenView.swift
//  login
//
//  Created by MacBOOK Pro on 4/1/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("bg").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    Image("loginui")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400)
                    
                    Spacer()
                    
                    Text("Get Started")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("primary"))
                        .cornerRadius(50)
                    
                    NavigationLink(destination: SignInScreenView().navigationBarHidden(true), label: {
                        Text("Sign In")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("primary"))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(50)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                            .padding(.vertical)
                    })
                    .navigationBarHidden(true)
                    
                    HStack {
                        Text("Don't have any account?")
                        Text("Sign Up")
                            .foregroundColor(Color("primary"))
                            .fontWeight(.semibold)
                    }
                }
                .padding()
            }
        }
    }
}
