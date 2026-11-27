//
//  LoginView.swift
//  Study_Circle
//
//  Created by Mayuri Kale on 24/11/26.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) private var dismiss

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 22) {
                HStack(alignment: .top, spacing: 14) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 19, weight: .medium))
                            .foregroundStyle(Color("MainColor"))
                            .frame(width: 24, height: 30)
                    }

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Welcome back")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundStyle(Color(red: 0.125, green: 0.125, blue: 0.20))

                        Text("Pick up where you left off")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text("EMAIL")
                        .font(.caption.bold())
                        .foregroundStyle(.secondary)

                    TextField("alex@example.com", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .padding(.horizontal, 14)
                        .frame(height: 50)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color("MainColor").opacity(0.15), lineWidth: 1)
                        }
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text("PASSWORD")
                        .font(.caption.bold())
                        .foregroundStyle(.secondary)

                    SecureField("Enter your password", text: $password)
                        .padding(.horizontal, 14)
                        .frame(height: 50)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color("MainColor").opacity(0.15), lineWidth: 1)
                        }
                }

                HStack {
                    Spacer()
                    Button("Forgot password?") {
                        // Password reset इथे जोड
                    }
                    .font(.footnote.weight(.semibold))
                    .foregroundStyle(Color("MainColor"))
                }

                Button("Log in") {
                    // Firebase login इथे जोड
                }
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 52)
                .background(Color("MainColor"))
                .clipShape(RoundedRectangle(cornerRadius: 15))

                Button {
                    // Apple Sign In इथे जोड
                } label: {
                    Label("Continue with Apple", systemImage: "apple.logo")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundStyle(.primary)
                        .frame(maxWidth: .infinity)
                        .frame(height: 52)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .overlay {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color("MainColor").opacity(0.15), lineWidth: 1)
                        }
                }

                HStack(spacing: 4) {
                    Text("New to Study Circle?")
                        .foregroundStyle(.secondary)

                    NavigationLink("Create account") {
                        CretaeAccountView()
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("MainColor"))
                }
                .font(.footnote)
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 24)
            .padding(.top, 28)
            .padding(.bottom, 24)
        }
        //.background(.white.ignoresSafeArea())
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}

