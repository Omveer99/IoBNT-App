import SwiftUI

struct Screen3: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("start3")
                    .resizable()
                    .scaledToFit()
                
                Text("Get Your Health and Fitness Report")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding([.leading, .trailing], 13)
                
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
                            .fill(Color.blue)
                            .frame(width: 8, height: 8)
                    }
                    .padding(.leading, 10)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: LoginScreen().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "arrowshape.forward.circle.fill")
                            .foregroundColor(.brown)
                            .font(.largeTitle)
                            .padding()
                    }
                    
                    Spacer()
                }
                .padding(.leading, 10)
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home Screen")
            .font(.largeTitle)
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Screen3()
}
