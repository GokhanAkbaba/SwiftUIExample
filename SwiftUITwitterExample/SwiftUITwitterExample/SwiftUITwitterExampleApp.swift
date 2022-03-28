//
//  SwiftUITwitterExampleApp.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 8.03.2022.
//

import SwiftUI
import Firebase

@main
struct SwiftUITwitterExampleApp: App {
    @StateObject var viewModel = AuthenticationViewModel()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
                    .environmentObject(viewModel)
        }
    }
}
}
