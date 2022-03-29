//
//  BottomNavBar.swift
//  MovieTicket
//
//  Created by Tuấn Điệp on 30/03/2022.
//

import SwiftUI

struct BottomNavBar: View {
    var body: some View {
        TabView {
                        NavigationView{
                            HomeView()
                        }
                        .tabItem {
                            VStack{
                               Image(systemName: "house")
                            }
                        }
                         NavigationView{
                             HomeView()
                         }
                         .tabItem {
                             VStack{
                                Image(systemName: "square.stack")
                             }
                         }
                     }
    }
}

struct BottomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBar()
    }
}
