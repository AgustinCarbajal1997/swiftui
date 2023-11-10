//
//  StateView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

// en swift ui se usan @state porque los struct son inmutables. Por eso se usa state. cada vez que cambia el valor de state, se genera un nuevo renderizado. Siempre se usa cuando tenemos un valor que se va a modificar a lo largo del ciclo del vida del componente. Y siempre sera state en la vista que se encarga de definirlo. Binding se usa en la vista que recibe el valor

// para convertir un objeto en tipo mutable y que podamos modificar desde la UI necesitable usar ObjectObservable
class UserData: ObservableObject {
    @Published var name = "Agustin Carbajal"
    @Published var age = 26
}

// environment object permite evitar "tipo el prop drilling en react native", osea pasar datos entre varias pantallas

struct StateView: View {
    
    @State private var value: Int = 0
    @State private var selection: Bool = false
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("El valor actual es: \(value)")
                Button("Suma 1") {
                    value += 1
                }
                
                Text("Mi nombre es \(user.name) y mi edad \(user.age)")
                Button("Actualizar datos") {
                    user.name = "Bais Moure"
                    user.age = 36
                }
                NavigationStack {
                    Button(action: {
                        selection = true
                    }) {
                        Text("Ir a BindingView")
                    }.navigationDestination(isPresented: $selection, destination: { BidingView(value: $value, user: user) })
                }
            }.navigationTitle("Estados")
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
