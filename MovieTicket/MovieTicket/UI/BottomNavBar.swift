//
//  BottomNavBar.swift
//  MovieTicket
//
//  Created by Tuấn Điệp on 30/03/2022.
//

import SwiftUI

struct BottomNavBar: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.init(hex: "#130f40"))
    }
    var body: some View {
        TabView {
                        NavigationView{
                            HomeView()
                        }
                        .tabItem {
                            VStack{
                               Image(systemName: "house.fill")
                                Text("Movies")
                            }
                        }
                         NavigationView{
                             HomeView()
                         }
                         .tabItem {
                             VStack{
                                Image(systemName: "wallet.pass")
                                 Text("Wallet")
                             }
                         }
            NavigationView{
                HomeView()
            }
            .tabItem {
                VStack{
                   Image(systemName: "lineweight")
                    Text("My Ticket")
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
