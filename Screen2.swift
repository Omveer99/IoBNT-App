//
//  Screen2.swift
//  IoNBT App
//
//  Created by Omveer Panwar on 15/07/24.
//

import SwiftUI

struct Screen2: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("start4")
                    .resizable()
                    .scaledToFit()
                
                
                Text("Check your Heart Beat and Temperature in Seconds")
                    .font(.title2)
                    .fontWeight(.bold)
                
                
                HStack {
                    
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 8, height: 8)
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 8, height: 8)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 8, height: 8)
                    }.padding(.leading,10)
                    
                    Spacer()
                }
                    HStack {
                        Spacer()
                        NavigationLink(destination: Screen3()) {
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
    Screen2()
}
