//
//  ListView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    @Published var programmers:[Programmer] = [Programmer(id: 0, name: "Agustin Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: true), Programmer(id: 1, name: "Juan Boca", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: false), Programmer(id: 2, name: "Carlos Rivera", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: false), Programmer(id: 3, name: "Miguel Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: false), Programmer(id: 4, name: "Claudio Carbajal", languajes: "RN", avatar: Image(systemName: "person.fill"), isStarred: true)]
}

 

struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites: Bool = false
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter {
            programmer in
            return !showFavorites || programmer.isStarred
        }
    }
    
    var body: some View {
        // se agrega el simbolo $ para que pueda acceder al valor de forma mutable
        NavigationView {
        VStack {
            Toggle(isOn: $showFavorites){
                Text("Mostrar Favoritos")}.padding()
            
                List(filteredProgrammers, id: \.id) {
                    programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, isStarred: $programmersModelData.programmers[programmer.id].isStarred)) {
                        RowView(programmer: programmer)
                    
                    }
                }
                
            }.navigationTitle("Programadores")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
