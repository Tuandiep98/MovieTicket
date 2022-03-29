//
//  HomeView.swift
//  MovieTicket
//
//  Created by Tuấn Điệp on 30/03/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            PlayerView().edgesIgnoringSafeArea(.all)
            
            LinearGradient(gradient: Gradient(colors: [.clear,.black, .black, .black]), startPoint: .top, endPoint: .bottom)
                .overlay(
                    VStack{
                    Text("Alien 1979")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    HStack(alignment: .center){
                        Text("Science Fiction")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Divider().background(Color.white)
                        Color.yellow.overlay(Text("IMDh").bold())
                            .cornerRadius(5)
                            .frame(width: 60, height: 30)
                        Text("9.2")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Divider().background(Color.white)
                        Text("1 Hour 45 Minutes")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }.frame(height: 40)
                    Text("A Commercial Spacecraft Called The Nostrama, Carrying Seven People On Its Way Back To Earth, Encounters A Message Of Help From A Planet In Its Path...")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple]), startPoint: .leading, endPoint: .trailing)
                        .overlay(
                            HStack(alignment: .center){
                            Color.black.overlay(
                                HStack{
                                Image(systemName: "ticket").foregroundColor(.white)
                                Text("Booking").foregroundColor(.white).bold()
                            })
                                .frame(alignment: .leading)
                                .cornerRadius(18)
                                .padding(7)
                            Spacer()
                            HStack(){
                                Text("Swipe To The Right")
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(.white)
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(.white)
                            }
                        }
                    )
                    .frame(height: 80, alignment: .center)
                    .cornerRadius(20)
                    .padding()
                }
            ).frame(height: 310)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
