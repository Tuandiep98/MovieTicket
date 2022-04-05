//
//  HomeView.swift
//  MovieTicket
//
//  Created by Tuấn Điệp on 30/03/2022.
//

import SwiftUI

struct HomeView: View {
    var movies: [String] = ["the_batman_thumb2", "matrix_thumb", "the_lost_city_thumb"]
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .center){
                HStack(alignment: .center){
                    VStack(alignment: .leading){
                        Text("Find Your Best")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        Text("Movie")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    Image("people")
                        .resizable()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                        .frame(width: 60, height: 60)
                }.padding()
                HStack{
                    Color.gray.frame(height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 28))
                        .opacity(0.12)
                        .overlay(
                        HStack{
                            Image(systemName: "viewfinder")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.white)
                            .padding()
                            Text("Search movie")
                            .font(.title2)
                            .foregroundColor(Color.white)
                            Spacer()
                        }.padding()
                    )
                    Color.blue
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(
                            Image(systemName: "scribble.variable")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color.white)
                        )
                }.padding()
                ScrollView(.horizontal){
                    HStack(alignment: .center, spacing: 10){
                        Color.blue
                            .frame(width: 100, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 18))
                            .overlay(
                                Text("All")
                                    .bold()
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            )
                        Color.init(hex: "#30336b")
                            .frame(width: 100, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 18))
                            .overlay(
                                Text("Action")
                                    .bold()
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            )
                        Color.init(hex: "#30336b")
                            .frame(width: 100, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 18))
                            .overlay(
                                Text("Drama")
                                    .bold()
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            )
                        Color.init(hex: "#30336b")
                            .frame(width: 100, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 18))
                            .overlay(
                                Text("Horor")
                                    .bold()
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                            )
                    }.padding(.leading)
                }
                HStack(alignment: .center){
                    Text("Now Playing")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Spacer()
                }.padding()
                HStack(alignment: .center, spacing: 20) {
                    ForEach(0..<movies.count) { i in Image(movies[i]).resizable()
                                     .frame(width: 350, height: 200, alignment: .center)
                                     .cornerRadius(10)
                            }
                }.modifier(ScrollingHStackModifier(items: movies.count, itemWidth: 325, itemSpacing: 20)).frame(width: 400)
                HStack(alignment: .center){
                    Text("Coming Soon")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Spacer()
                }.padding()
                HStack(alignment: .center, spacing: 10) {
                    ForEach(0..<movies.count) { i in Image(movies[i]).resizable()
                                     .frame(width: 150, height: 80, alignment: .center)
                                     .cornerRadius(10)
                            }
                }.modifier(ScrollingHStackModifier(items: movies.count, itemWidth: 30, itemSpacing: 5)).frame(width: 400)
                HStack(alignment: .center){
                    Text("Promo")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("View all").font(.headline).foregroundColor(Color.init(hex: "#3498db"))
                }.padding(.horizontal)
                Color.init(hex: "#3498db")
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .overlay(
                        HStack(alignment: .center){
                        VStack(alignment: .leading){
                            Text("Student Holiday")
                                .font(.title)
                                .foregroundColor(Color.white)
                            Text("Maximal only for two people")
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Text("OFF 50%")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }.padding()
                    ).padding(.horizontal)
                Color.init(hex: "#3498db")
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .overlay(
                        HStack(alignment: .center){
                        VStack(alignment: .leading){
                            Text("Student Holiday")
                                .font(.title)
                                .foregroundColor(Color.white)
                            Text("Maximal only for two people")
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        Text("OFF 50%")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }.padding()
                    ).padding(.horizontal)
            }
        }.background(Color.init(hex: "#130f40").ignoresSafeArea())
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
