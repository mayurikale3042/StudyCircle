//
//  ContentView.swift
//  Study_Circle
//
//  Created by Mayuri Kale on 24/11/26.
//

import SwiftUI
import SwiftData

struct WelcomeView: View {
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 0) {
                
                Image("welcome_img")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 260)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 12)
                
                VStack(spacing: 8) {
                    Text("Study Circle")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundStyle(Color(red: 0.125, green: 0.125, blue: 0.20))
                    
                    Text("Learn better, together.")
                        .font(.system(size: 17, weight: .medium))
                        .foregroundStyle(.secondary)
                }
                .multilineTextAlignment(.leading)
                .padding(.top, 12)
                
                
                Text("Find your people, share notes, and keep your study sessions moving.")
                    .font(.system(size: 15))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: 320)
                    .padding(.horizontal, 24)
                    .padding(.top, 14)
                
                Spacer(minLength: 28)
                
                
                
                VStack(spacing: 12) {
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("Get Started")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(Color("MainColor"))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    
                    NavigationLink {
                        CretaeAccountView()
                    } label: {
                        Text("I already have an account")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(Color("MainColor"))
                            .frame(maxWidth: .infinity)
                            .frame(height: 52)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .overlay {
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(red: 0.87, green: 0.85, blue: 0.93), lineWidth: 1)
                            }
                    }
                }
                .padding(.horizontal, 24)
                Spacer(minLength: 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}



#Preview {
    WelcomeView()
}
