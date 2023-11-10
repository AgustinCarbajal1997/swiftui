//
//  MainView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 09/11/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack{
                MapView().frame(height: 300)
                Divider().padding(10)
                ImageView()
                ContentView()
            }

        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
