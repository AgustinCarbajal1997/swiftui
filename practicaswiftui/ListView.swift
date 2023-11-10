//
//  ListView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

private let programmers:[Programmer] = [Programmer(id: 1, name: "Agustin Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill")), Programmer(id: 2, name: "Juan Boca", languajes: "RN", avatar: Image(systemName: "person.fill")), Programmer(id: 3, name: "Carlos Rivera", languajes: "RN", avatar: Image(systemName: "person.fill")), Programmer(id: 4, name: "Miguel Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill")), Programmer(id: 5, name: "Claudio Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"))]

struct ListView: View {
    var body: some View {
        NavigationView {
            List(programmers, id: \.id) {
                programmer in
                NavigationLink(destination: ListDetailView(programmer: programmer)) {
                    RowView(programmer: programmer)
                
                }
            }
            .navigationTitle("Programadores")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
