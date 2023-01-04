//
//  SignInScreenView.swift
//  login
//
//  Created by MacBOOK Pro on 5/1/23.
//

import SwiftUI

struct SocialLoginButton: View {
    
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
    }
}

struct SignInScreenView: View {
    @State private var email: String = ""
    var body: some View {
        ZStack {
            Color("bg").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                    SocialLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                    SocialLoginButton(image: Image("google"), text: Text("Sign in with Google").foregroundColor(Color("primary")))
                        .padding(.vertical)
                    
                    Text("Get a link to your others mail address")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Email address      ", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                        .padding(.vertical)
                    
                    Text("Email me a signup link")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("primary"))
                        .cornerRadius(50)
                }
                Spacer()
                Divider()
                Spacer()
                Text("Welcome to our App")
                Text("Our Terms & Condition")
                    .foregroundColor(Color("primary"))
                Spacer()
            }
            .padding()
        }
    }
}
