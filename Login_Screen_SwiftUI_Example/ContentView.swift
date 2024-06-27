//
//  ContentView.swift
//  Login_Screen_SwiftUI_Example
//
//  Created by FAr Az on 21.06.24.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true

    var body: some View {
        VStack {
            // Title
            Text("Login")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 40)

            // Username Field
            HStack {
                // Find a suitable icon from SF symbol
                Image(systemName: "person.fill")
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 20)
            }
            .padding()

            HStack {
                // Find a suitable icon from SF symbol
                Image(systemName: "lock.fill")

                // Password Field
                if isSecure {
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 20)
                } else {
                    TextField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 20)
                }
            }
            .padding()

            // Toggle Show/Hide Password
            Button(action: {
                isSecure.toggle()
            }) {
                Text(isSecure ? "Show Password" : "Hide Password")
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 20)

            // Login Button
            Button(action: {
                login()
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
        }
        .padding()
    }

    func login() {
        // Add login action here
        print("Username: \(username), Password: \(password)")
    }
}

#Preview {
    ContentView()
}
