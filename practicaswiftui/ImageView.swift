//
//  ImageView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 09/11/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("ferrari").scaledToFit().frame(width: 300).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 4)).shadow(color: .gray, radius: 25)
            Image(systemName: "person.fill.badge.minus").resizable().frame(width: 200, height: 200).foregroundColor(.red)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
