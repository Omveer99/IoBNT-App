//
//  Screen1.swift
//  IoNBT App
//
//  Created by Omveer Panwar on 15/07/24.
//

import SwiftUI

struct Screen1: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("start1")
                    .resizable()
                    .scaledToFit()
                    .padding()

                Text("Track your fitness at any point in the day....")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(20)
                HStack {
                    
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 8, height: 8)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                    }.padding(.leading,10)
                    
                    Spacer()
                }

                HStack {
                    Spacer()
                    NavigationLink(destination: Screen2().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "arrowshape.forward.circle.fill").foregroundColor(.brown)
                            .font(.largeTitle)
                            .padding()
                    }
                    Spacer()
                }.padding(.leading,10)
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    Screen1()
}
