//
//  ContentView.swift
//  Wheater App
//
//  Created by Pierre Juarez U. on 29/10/22.
//

import SwiftUI



struct WeatherView: View {
  
  
  var body: some View {
    
    ZStack{
      
      VStack {
        
        
        Text("Weather App")
          .font(.system(size: 25))
          .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
          .bold()
        
        Spacer()
        
        Text("My ubication")
          .font(.largeTitle)
        
        
        Text("☀️")
          .font(.system(size: 100))
          .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        
        Text("It's sunny")
          .font(.system(size: 30))
        
        Text("25°C")
          .font(.system(size: 70))
          .bold()
          .padding(.bottom,50)
        
        
        Spacer()
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(LinearGradient(colors: [Color("gradientStartNight"),Color("gradientEndNight")], startPoint: .topLeading, endPoint: .bottomTrailing))// 1
      .foregroundColor(Color("textColor"))
      
    }
    
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView()
  }
}
