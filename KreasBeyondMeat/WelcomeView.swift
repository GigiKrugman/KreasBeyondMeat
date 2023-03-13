//
//  WelcomeView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 13.03.23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
        ZStack {
            Image("Beyond meat")
                .scaledToFit()
                
        
            VStack {
                
                    Text("Kreas")
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 0.151, saturation: 0.0, brightness: 0.997))
                        .bold()
                        .fontWeight(.black)
                        
                        .frame(width: 105.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/148.0)
                        .fontDesign(.rounded)
                    
                    Text("The beyond meat")
                    .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.947))
                    
                NavigationLink(destination: HomeView()) {Text("Start")
                        .padding(15)
                        .font(.callout)
                        .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hue: 0.268, saturation: 0.962, brightness: 0.434))
                    .background(.white)
                    .cornerRadius(8)
                    
                }
                }
            
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
