//
//  CretaeAccountView.swift
//  Study_Circle
//
//  Created by Mayuri Kale on 24/11/26.
//

import SwiftUI

struct CretaeAccountView: View {
    @Environment(\.dismiss) private var dismiss

    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var agreedToTerms = false

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
                            .frame(width: 25, height: 30)
                    }

                    VStack(alignment: .leading, spacing: 6) {
                        Text("Create account")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundStyle(Color(red: 0.125, green: 0.125, blue: 0.20))

                        Text("Your study space starts here")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text("FULL NAME")
                        .font(.caption.bold())
                        .foregroundStyle(.secondary)

                    TextField("Alex Morgan", text: $fullName)
                        .textInputAutocapitalization(.words)
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

                    SecureField("At least 8 characters", text: $password)
                        .padding(.horizontal, 14)
                        .frame(height: 50)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color("MainColor").opacity(0.15), lineWidth: 1)
                        }
                }

                Button {
                    agreedToTerms.toggle()
                } label: {
                    HStack(spacing: 9) {
                        Image(systemName: agreedToTerms
                              ? "checkmark.square.fill"
                              : "square")
                            .font(.system(size: 18))
                            .foregroundStyle(Color("MainColor"))

                        Text("I agree to the Terms and Privacy Policy")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
                .buttonStyle(.plain)

                Button {
                    // Firebase account creation इथे जोड
                } label: {
                    Text("Create account")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 52)
                        .background(Color("MainColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }

                HStack(spacing: 4) {
                    Text("Already have an account?")
                        .foregroundStyle(.secondary)

                    NavigationLink("Log in") {
                        LoginView()
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
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        CretaeAccountView()
    }
}
