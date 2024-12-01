//
//  ContentView.swift
//  MTAGM
//
//  Created by Seyma Arslan on 19.11.2024.
//

import SwiftUI

struct ContentView: View {
    // View properties
    @State private var showSignup: Bool = false
    private let imageURL: String = ""
    var body: some View {
        NavigationStack {
            Login(showSignup: $showSignup)
                .navigationDestination(isPresented: $showSignup) {
                    SignUp(showSignup: $showSignup)
                }
        }
        .overlay {
            // iOS 17 bounce animations
            if #available(iOS 17, *) {
                CircleView()
                    .animation(.smooth(duration: 0.45, extraBounce: 0), value: showSignup)
            } else {
                CircleView()
                    .animation(.easeInOut(duration: 0.3), value: showSignup)
            }
        }
    }
    
    // having blurred background
    @ViewBuilder
    func CircleView() -> some View {
        Circle()
            .fill(.linearGradient(colors: [Color("CustomBlue") ,Color("CustomBlue"), Color("CustomWhite")], startPoint: .leading, endPoint: .trailing))
            .frame(width: 100, height: 100)
            //  moving  when the Signup pages loads/dismiss
            .offset(x: showSignup ? 50 : -50, y: -50)
            .blur(radius: 15)
            .hSpacing(showSignup ? .trailing : .leading)
            .vSpacing(.top)
    }
}

#Preview {
    ContentView()
}
