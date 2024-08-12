import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            AnalyticsView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Analytics")
                }
            
            DoctorView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Doctor")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
