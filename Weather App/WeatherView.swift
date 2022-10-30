//
//  ContentView.swift
//  Wheater App
//
//  Created by Pierre Juarez U. on 29/10/22.
//

import SwiftUI



struct WeatherView: View {
  
  @ObservedObject var viewModel: WeatherViewModel
  
  var body: some View {
    
    ZStack{
      
      VStack {
        
        
        Text("Weather App")
          .font(.system(size: 25))
          .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
          .bold()
        
        Spacer()
        
        Text(viewModel.cityName)
          .font(.largeTitle)
        
        
        Image(viewModel.iconName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 200)
        
        Text(viewModel.weatherDescription)
          .font(.system(size: 30))
        
        Text(viewModel.temperature)
          .font(.system(size: 70))
          .bold()
          .padding(.bottom,50)
        
        
        Spacer()
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(LinearGradient(colors: [Color("gradientStartNight"),Color("gradientEndNight")], startPoint: .topLeading, endPoint: .bottomTrailing))// 1
      .foregroundColor(Color("textColor"))
      
    }
    .onAppear(perform: viewModel.refresh)
    
    
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
  }
}
