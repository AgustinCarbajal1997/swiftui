//
//  ListDetailView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    @Binding var isStarred: Bool // binding sirve para que una variable que viene de otra clase pueda ser modificada
    
    var body: some View {
        VStack{
            programmer.avatar.resizable().frame(width:200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
            HStack {
                Text(programmer.name).font(.title)
                Button {
                    isStarred.toggle()
                } label: {
                    if isStarred {
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star.fill").foregroundColor(.gray)
                    }
                    
                }
            }
            
            Text(programmer.languajes).font(.subheadline)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Agustin Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: true), isStarred: .constant(false))
    }
}
