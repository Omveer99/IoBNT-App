////
////  LoginScreen.swift
////  IoNBT App
////
////  Created by Omveer Panwar on 15/07/24.
////
//
//import SwiftUI
//
//struct LoginScreen: View {
//    @State private var username = ""
//    @State private var password = ""
//    var body: some View {
//        VStack(alignment: .leading){
//              Text("Lets Sign you in").font(.title).bold().frame(alignment: .leading)
//              
//              Text("Welcome Back,").font(.title3).bold().padding(EdgeInsets(top: 7, leading: 0, bottom: 3, trailing: 0))
//              
//              Text("You have been missed").font(.title3).bold()
//              
//      
//                  TextField("Enter your Username", text: $username)
//                      .padding(.trailing, 8)
//                      .padding()
//                      .foregroundColor(.black)
//                      .overlay(
//                          RoundedRectangle(cornerRadius: 10)
//                              .stroke(Color.gray, lineWidth: 1)
//                      )
//                      .padding(EdgeInsets(top: 37, leading: 0, bottom: 7, trailing: 0))
//                  //            TextField("Enter your Username", text: $username)
//                  //                .padding(.leading, 30)
//                  //                .padding(.trailing, 8).italic().border(Color.gray).padding()
//                  
//                  SecureField("Enter your Username", text: $password)
//                      .padding(.trailing, 8)
//                      .padding()
//                      .overlay(
//                          RoundedRectangle(cornerRadius: 10)
//                              .stroke(Color.gray, lineWidth: 1)
//                      )
//                      .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: 0))
//              
//              
//              HStack {
//                             Spacer()
//                             Text("Forget Password ?")
//                                 .bold()
//                         }
//              Button(action: {
//                  
//              }, label: {
//                  Text("\t\t\t\t Sign in \t\t\t\t\t")
//                     .font(.title2)
//                     .bold()
//                     .foregroundColor(.white)
//                      .padding()
//                        .background(Color.blue)
//                        .cornerRadius(10).padding()
//              })
//              
//              
//              Text("⎯⎯⎯⎯⎯⎯⎯⎯⎯ OR ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯")
//              
//              HStack(alignment: .center){
//              
//                  Image("google-logo").resizable().frame(width: 40,height: 40).padding(EdgeInsets(top: 7, leading: 130, bottom: 7, trailing: 0))
//                  Image("apple").resizable().frame(width: 40,height: 40).padding()
//              }
//              
//              HStack(alignment: .center){
//                  Text("Don`t have an account ?").padding(EdgeInsets(top: 7, leading: 20, bottom: 7, trailing: 0))
//                  Text("Register Now").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//              }
//          }.padding()
//      }
//  }
//   
//#Preview {
//    LoginScreen()
//}

//
//  LoginScreen.swift
//  IoNBT App
//
//  Created by Omveer Panwar on 15/07/24.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isSignedIn = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Let's Sign you in")
                    .font(.title)
                    .bold()
                    .frame(alignment: .leading)
                
                Text("Welcome Back,")
                    .font(.title3)
                    .bold()
                    .padding(EdgeInsets(top: 7, leading: 0, bottom: 3, trailing: 0))
                
                Text("You have been missed")
                    .font(.title3)
                    .bold()
                
                TextField("Enter your Username", text: $username)
                    .padding(.trailing, 8)
                    .padding()
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding(EdgeInsets(top: 37, leading: 0, bottom: 7, trailing: 0))
                
                SecureField("Enter your Password", text: $password)
                    .padding(.trailing, 8)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: 0))
                
                HStack {
                    Spacer()
                    Text("Forget Password?")
                        .bold()
                }
                
                NavigationLink(destination: TabBarView().navigationBarBackButtonHidden(true), isActive: $isSignedIn) {
                    Button(action: {
                        // Implement your sign-in logic here
                        // After successful sign-in, set isSignedIn to true
                        isSignedIn = true
                    }, label: {
                        Text("\t\t\t\t Sign in \t\t\t\t\t")
                            .font(.title2)
                             .bold()
                              .foregroundColor(.white)
                              .padding()
                                .background(Color.blue)
                                  .cornerRadius(10).padding()
                    })
                }
                
                Text("⎯⎯⎯⎯⎯⎯⎯⎯⎯ OR ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯")
                
                HStack(alignment: .center) {
                    Image("google-logo")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(EdgeInsets(top: 7, leading: 130, bottom: 7, trailing: 0))
                    
                    Image("apple")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                }
                
                HStack(alignment: .center) {
                    Text("Don't have an account?")
                        .padding(EdgeInsets(top: 7, leading: 20, bottom: 7, trailing: 0))
                    
                    Text("Register Now")
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}



#Preview {
    LoginScreen()
}
