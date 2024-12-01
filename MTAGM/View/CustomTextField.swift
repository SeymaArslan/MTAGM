//
//  CustomTextField.swift
//  MTAGM
//
//  Created by Seyma Arslan on 20.11.2024.
//

import SwiftUI

struct CustomTextField: View {
    var sfIcon: String
    var iconTint: Color = .gray
    var hint: String
    var isPassword: Bool = false  // hide tf
    @Binding var value: String
    
    //MARK: - View Properties
    @State private var showPassword: Bool = false
    
    var body: some View {
        HStack(alignment: .top, spacing: 8, content: {
            Image(systemName: sfIcon)
                .foregroundStyle(iconTint)
            // since I need same width to align textFields equally
                .frame(width: 30)
        
            // slightly bringing down
                .offset(y: 2)
            
            VStack(alignment: .leading, spacing: 8, content: {
                if isPassword {
                    Group {
                        // reveiling password when users wants to show password
                        if showPassword {
                            TextField(hint, text: $value)
                        } else {
                            SecureField(hint, text: $value)
                        }
                    }
                    
                } else {
                    TextField(hint, text: $value)
                }
                
                Divider()
            })
            .overlay(alignment: .trailing) {
                // password reveal button
                if isPassword {
                    Button(action: {
                        withAnimation {
                            showPassword.toggle()
                        }
                    }, label: {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundStyle(.gray)
                            .padding(10)
                            .contentShape(.rect)
                    })
                }
            }
        })
    }
}

