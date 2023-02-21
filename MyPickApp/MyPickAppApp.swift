//
//  MyPickAppApp.swift
//  MyPickApp
//
//  Created by Holly McBride on 21/02/2023.
//

import SwiftUI
import Firebase

@main
struct MyPickAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
