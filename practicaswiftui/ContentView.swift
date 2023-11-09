import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Bienvenidos a swift perroo").font(.largeTitle).foregroundColor(.red).background(.green)
            Spacer()
            ZStack(){
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(.gray).padding()
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(.green).padding(40)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(.yellow).padding(60)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(.purple).padding(80)
            }
            Spacer()
            HStack{
                Text("Segundo texto").font(.largeTitle).foregroundColor(.red).background(.yellow)
                Spacer()
                Text("Tercer texto").font(.largeTitle).foregroundColor(.red).background(.yellow)
            }

        }.background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
