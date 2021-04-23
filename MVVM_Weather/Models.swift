//
//  Models.swift
//  MVVM_Weather
//
//  Created by valentine on 03.04.2021.
//

import Foundation

// Data

struct WeatherModel: Codable {
    let timezone: String
    let current: CurrentWeather
}

struct CurrentWeather: Codable {
    let temp: Float
    let weather: [WeatherInfo]
}

struct WeatherInfo: Codable {
    let main: String
    let description: String
}
