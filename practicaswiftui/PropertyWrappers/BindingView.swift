//
//  BidingView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

// en swift ui se usan @state porque los struct son inmutables. Por eso se usa state. cada vez que cambia el valor de state, se genera un nuevo renderizado. Siempre se usa cuando tenemos un valor que se va a modificar a lo largo del ciclo del vida del componente. Y siempre sera state en la vista que se encarga de definirlo. Binding se usa en la vista que recibe el valor
struct BidingView: View {
    
    // como va a ser accesible de afuera para mandarle el valor del estado, NO puede ser private
    @State private var selection: Bool = false
    @Binding var value: Int
    // equivalente a binding para objetos complejos
    @ObservedObject var user: UserData
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text("El valor actual es: \(value)")
                Button("Suma 2") {
                    value += 2
                }
                Button("Actualizar datos") {
                    user.name = "Bocaaaa Juniors"
                    user.age = 105
                }
                NavigationStack {
                    Button(action: {
                        selection = true
                    }) {
                        Text("Ir a Environment view")
                    }.navigationDestination(isPresented: $selection, destination: { EnvironmentView() })
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BidingView(value: .constant(5), user: UserData())
    }
}
