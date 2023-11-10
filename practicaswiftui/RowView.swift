//
//  RowView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack{
            programmer.avatar.resizable().frame(width: 40,height: 40).padding(10)
            VStack(alignment: .leading){
                Text(programmer.name).font(.title)
                Text(programmer.languajes).font(.subheadline)
            }
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Agustin Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill")))
    }
}
