//
//  EnvironmentView.swift
//  practicaswiftui
//
//  Created by Agustin Carbajal on 10/11/2023.
//

import SwiftUI

struct EnvironmentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView().environmentObject(UserData())
    }
}
