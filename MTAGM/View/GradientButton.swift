//
//  GradientButton.swift
//  MTAGM
//
//  Created by Seyma Arslan on 20.11.2024.
//

import SwiftUI

struct GradientButton: View {
    
    var title: String
//    var icon: String
    var onClick: () -> ()
    
    var body: some View {
        Button(action: onClick, label: {
            if #available(iOS 17.0, *) {
                HStack(spacing: 15) {
                    Text(title)
//                    Image(systemName: icon)
                }
                .fontWeight(.bold)
                .foregroundStyle(Color("CustomWhite"))
                .padding(.vertical, 15)
                .padding(.horizontal, 60)
                .background(.linearGradient(colors: [Color("CustomBlue"), Color("CustomBlue"), .blue], startPoint: .top, endPoint: .bottom), in: .buttonBorder)
            } else {
                // Fallback on earlier versions
            }
        })
    }
}

#Preview {
    ContentView()
}
