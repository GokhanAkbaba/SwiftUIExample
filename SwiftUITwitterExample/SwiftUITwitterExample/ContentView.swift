//
//  ContentView.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 8.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthenticationViewModel
    var body: some View {
        Group{
            if viewModel.userSession != nil{
                LoginView()
            }else{
                mainInterfaceView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}

extension ContentView{
    var mainInterfaceView: some View{
        ZStack(alignment:.topLeading){
            MainTabView()
                .navigationBarHidden(showMenu)
            if showMenu{
                ZStack{
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0.0)
                }.onTapGesture {
                    withAnimation(.easeOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            SideMenuView()
                .frame(width:300)
                .offset(x:showMenu ? 0 : -300, y:0)
                .background(showMenu ? Color.white: Color.clear)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut){
                        showMenu.toggle()
                    }
                  
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }

            }
        }
        .onAppear(){
            showMenu = false
        }
    }
}
