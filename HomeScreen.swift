import SwiftUI

extension Color {
    static let customGreen = Color(red: 7/255, green: 86/255, blue: 89/255)
    static let customLightBlue = Color(red: 168/255, green: 223/255, blue: 225/255)
    static let customVeryLightBlue = Color(red: 234/255, green: 248/255, blue: 248/255)
    static let customRed = Color(red: 255/255, green: 59/255, blue: 48/255) 
    static let customYellow = Color(red: 255/255, green: 204/255, blue: 0/255)
}

struct HomeScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Good Afternoon,")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.customGreen)
                            Text("Omveer")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.customGreen)
                            
                            Text("Monday, July 15")
                                .font(.caption)
                                .foregroundColor(Color.black)
                        }.padding(.leading,20)
                        
                        
                        Spacer()
                        
                        Image(systemName: "bell.fill")
                            .foregroundColor(Color.customGreen)
                            .font(.title)
                            .overlay(
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                                    .padding(3)
                                    .background(Color.red)
                                    .clipShape(Circle())
                                    .offset(x: 8, y: -8)
                         )
                        
                        Spacer()
                        
                        Image("ov")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }.padding(.trailing,20)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.customVeryLightBlue)
                        .shadow(radius: 5)
                        .frame(height: 170)
                        .padding()
                        .overlay(
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                    Text("Health Report")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.customGreen)
                                }
                                
                                Text("You're performing well from yesterday in \n terms of calories burnt and steps. You need \n to drink more water today.")
                                    .font(.subheadline)
                                    .foregroundColor(Color.customGreen)
                                
                                Button("See more") {
                                    // Action to perform when "See more" is tapped
                                }
                            }
                        )
                }
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Activity(Today)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.customGreen)
                }
            
                
                VStack {
                    HStack {
                        StatCard(title: "WATER", value: "550 ml", icon: "drop.fill", cardColor: .customLightBlue)
                        StatCard(title: "STEPS", value: "7,582", icon: "figure.walk", cardColor: .customGreen)
                    }
                    HStack {
                        StatCard(title: "CALORIES", value: "675 cal", icon: "fork.knife.circle", cardColor: .customRed)
                        StatCard(title: "SLEEP", value: "7 hrs", icon: "moon.stars.fill", cardColor: .customYellow)
                    }
                    HStack {
                        StatCard(title: "HEART BEAT", value: "80bpm", icon: "fork.knife.circle", cardColor: .blue)
                        StatCard(title: "TEMP", value: "97 °C", icon: "degreesign.celsius", cardColor: .customLightBlue)
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.customVeryLightBlue)
                    .shadow(radius: 5)
                    .frame(height: 170)
                    .padding()
                    .overlay(
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "paperplane.fill")
                                    
                                Text("Doctor`s Guide")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.customGreen)
                            }
                            
                            Text("Combine regular physical activity with \n sufficient rest to promote physical \n fitness and mental well-being.")
                                .font(.subheadline)
                                .foregroundColor(Color.customGreen)
                            
                        }
                    )
            }
        }
    }
}

struct StatCard: View {
    let title: String
    let value: String
    let icon: String
    let cardColor: Color // Color for the card

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(cardColor.opacity(0.91))
                .frame(width: 170, height: 170)

            VStack {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack {
                    Text(value)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Image(systemName: icon)
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                }
                
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
        }
        .shadow(radius: 5)
        .padding()
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
