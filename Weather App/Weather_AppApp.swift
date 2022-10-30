//
//  Wheater_AppApp.swift
//  Wheater App
//
//  Created by Pierre Juarez U. on 29/10/22.
//

import SwiftUI

@main
struct Weather_AppApp: App {
    var body: some Scene {
        WindowGroup {
          WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
        }
    }
}
