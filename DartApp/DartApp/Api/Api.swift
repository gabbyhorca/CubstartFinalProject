//
//  Api.swift
//  DartApp
//
//  Created by Gabby Horca on 4/26/23.
//

import Foundation

func fetchRealTimeInfo() async-> RealTimeInfo? {
    guard let url = URL(string: "https://api.bart.gov/api/etd.aspx?cmd=etd&orig=RICH&key=QJJR-5LTA-978T-DWEI&json=y")
    else {
        return nil
    }
    
    let api_key = "QJJR-5LTA-978T-DWEI"
    
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        if let decodedResponse = try? JSONDecoder().decode(RealTimeInfo.self, from: data) {
                    return decodedResponse
                }
    } catch {
        return nil
    }
    return nil
}

func fetchRealTimeInfoContinuous() async -> RealTimeInfo {
    // Try to get a Dog
    var newRealTimeInfo = (await fetchRealTimeInfo()) ?? nil
    
    // Check if there is a Dog
    while (newRealTimeInfo == nil) {
        // Try again to get Dog
        newRealTimeInfo = (await fetchRealTimeInfo()) ?? nil
    }
    
    // Can force-unwrap because newDog is guaranteed a dog.
    return newRealTimeInfo!
}
