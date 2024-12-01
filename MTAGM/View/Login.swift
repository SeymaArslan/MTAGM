//
//  Login.swift
//  MTAGM
//
//  Created by Seyma Arslan on 20.11.2024.
//

import SwiftUI

struct Login: View {
    @Binding  var showSignup: Bool
    
    @State private var emailID: String = ""
    @State private var password: String = ""
    var body: some View {
        
        VStack(alignment: .center, spacing: 15, content: {
            Spacer(minLength: 0)
            
            Text("MTA Genel Müdürlüğü")
                .font(.title)
                .fontWeight(.regular)
                .foregroundStyle(Color("CustomBlue"))
                .padding(.top, -100)
            
            
            Image("mta")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 30)
            
            
            VStack(spacing: 25) {
                // custom text field
                CustomTextField(sfIcon: "mail", hint: "Email", value: $emailID)
                
                CustomTextField(sfIcon: "lock", hint: "Şifre", isPassword: true, value: $password)
                    .padding(.top, 5)
                
                GradientButton(title: "GİRİŞ") {
                    
                }
                .disableWithOpacity(emailID.isEmpty || password.isEmpty)

            }
            .padding(.top, 20)
            
            Spacer(minLength: 0)
            
            HStack(spacing: 6) {
                Button("Yardım ?") {
                    showSignup.toggle()
                }
                .fontWeight(.bold)
                .tint(Color("CustomRed"))
            }
            .font(.callout)
            .hSpacing()
        })
        .padding(.vertical, 15)
        .padding(.horizontal, 25)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    ContentView()
}
