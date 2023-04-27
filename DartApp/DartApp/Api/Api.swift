//
//  Api.swift
//  DartApp
//
//  Created by Gabby Horca on 4/26/23.
//

import Foundation

func fetchEstimatedDepartureTimes() async-> EstimatedDepartureTimes? {
    guard let url = URL(string: "https://api.bart.gov/api/etd.aspx?cmd=etd&orig=all&key=QJJR-5LTA-978T-DWEI&json=y")
    else {
        return nil
    }
    
    let api_key = "QJJR-5LTA-978T-DWEI"
    
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        if let decodedResponse = try? JSONDecoder().decode(EstimatedDepartureTimes.self, from: data) {
                    return decodedResponse
                }
    } catch {
        return nil
    }
    return nil
}

func fetchEstimatedDepartureTimesContinuous() async -> EstimatedDepartureTimes {
    // Try to get a Dog
      var newEstimatedDepartureTimes = (await fetchEstimatedDepartureTimes()) ?? nil

    // Check if there is a Dog
    while (newEstimatedDepartureTimes == nil) {
        // Try again to get Dog
        newEstimatedDepartureTimes = (await fetchEstimatedDepartureTimes()) ?? nil
    }
    
    // Can force-unwrap because newDog is guaranteed a dog.
    return newEstimatedDepartureTimes!
}
