//
//  ListView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

private let programmers:[Programmer] = [Programmer(id: 1, name: "Agustin Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: true), Programmer(id: 2, name: "Juan Boca", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: false), Programmer(id: 3, name: "Carlos Rivera", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: false), Programmer(id: 4, name: "Miguel Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: false), Programmer(id: 5, name: "Claudio Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: true)]

struct ListView: View {
    
    @State private var showFavorites: Bool = false
    private var filteredProgrammers: [Programmer] {
        return programmers.filter {
            programmer in
            return !showFavorites || programmer.isStarred
        }
    }
    
    var body: some View {
        // se agrega el simbolo $ para que pueda acceder al valor de forma mutable
        VStack {
            Toggle(isOn: $showFavorites){
                Text("Mostrar Favoritos")}.padding()
            NavigationView {
                List(filteredProgrammers, id: \.id) {
                    programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer)) {
                        RowView(programmer: programmer)
                    
                    }
                }
                .navigationTitle("Programadores")
            }
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
