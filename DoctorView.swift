//
//  DoctorView.swift
//  IoNBT App
//
//  Created by Omveer Panwar on 16/07/24.
//

import SwiftUI

struct DoctorView: View {
    var body: some View {
        VStack{
            Image("doctor").resizable().ignoresSafeArea()
            Text("Hello, Welcome to the Doctor View Page,\n Page will Update Shortly !")
        }
    }
}

#Preview {
    DoctorView()
}
