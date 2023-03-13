//
//  WelcomeView.swift
//  KreasBeyondMeat
//
//  Created by Marcello Mulas on 13.03.23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            VStack {
                Text("Kreas")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .bold()
                    .fontWeight(.black)
                    .frame(width: /*@START_MENU_TOKEN@*/104.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/108.0/*@END_MENU_TOKEN@*/)
                    .fontDesign(.rounded)
                    
                Text("The beyond meat")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.947))
                Button {
                    print("Button Tapped")
                } label: {
                    Text("START")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .padding(.all, 13.0)
                        .frame(height: 50.0)
                        .background(.white)
                        .foregroundColor(.red)
                        
                    
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
