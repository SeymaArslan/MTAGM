//
//  SignUp.swift
//  MTAGM
//
//  Created by Seyma Arslan on 1.12.2024.
//

import SwiftUI

struct SignUp: View {
    @Binding  var showSignup: Bool
    var body: some View {
        
        VStack(alignment: .center, spacing: 15, content: {
            Spacer(minLength: 0)
            
            Text("MTA Genel Müdürlüğü")
                .font(.title)
                .fontWeight(.regular)
                .foregroundStyle(Color("CustomBlue"))
                .padding(.top, -50)
            
            
            Image("mta")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 150)
                .padding(.top, 10)
            
            
            VStack(spacing: 9) {
                Text("MTA Genel Müdürlüğünce kullanılan mail(umta..) ve şifre bilgilerinizi kullanarak uygulamaya giriş yapabilirsiniz.")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundStyle(Color("CustomBlue"))
                    .padding(.top, -100)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 100)
                
                GradientButton(title: "GERİ") {
                    showSignup.toggle()
                }

            }
            .padding(.top, 20)
            
            Spacer(minLength: 0)
            
//            HStack(spacing: 6) {
//                Button("Yardım ?") {
//                    showSignup.toggle()
//                }
//                .fontWeight(.bold)
//                .tint(Color("CustomRed"))
//            }
//            .font(.callout)
//            .hSpacing()
        })
        .padding(.vertical, 15)
        .padding(.horizontal, 25)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    ContentView()
}
