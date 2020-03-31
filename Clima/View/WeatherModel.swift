//
//  WeatherModel.swift
//  Clima
//
//  Created by Abdelrahman on 2/29/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let cityName: String
    let conditionId: Int
    let tempreture: Double
    
    var tempretureStr: String{
        return String(format:"%.1f",tempreture)
    }
    
    var conditionName: String{
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "wind"
        case 800:
            return "sun.max"
        case 801...804:
            return "smoke.fill"
        default:
            return "cloud"
        }
    }
    
    
}
