//
//  ContentView.swift
//  MyPickApp
//
//  Created by Holly McBride on 21/02/2023.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
        VStack {
            
            List(model.list) {item in
                Text(item.name)
            }
            
            Divider()
            
        }
    }
    
    init() {
    model.getData()
}
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
