//
//  Api.swift
//  DartApp
//
//  Created by Gabby Horca on 4/26/23.
//

import Foundation

func fetchReturnedData() async-> ReturnedData? {
    guard let url = URL(string: "https://api.bart.gov/api/etd.aspx?cmd=etd&orig=all&key=MW9S-E7SL-26DU-VV8V&json=y")
    else {
        return nil
    }
    

    
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        if let decodedResponse = try? JSONDecoder().decode(ReturnedData.self, from: data) {
                    return decodedResponse
                }
    } catch {
        return nil
    }
    return nil
}

func fetchReturnedDataContinuous() async -> ReturnedData {
   
    // Try to get a Dog
      var newReturnedData = (await fetchReturnedData()) ?? nil

    // Check if there is a Dog
    while (newReturnedData == nil) {
        // Try again to get Dog
       print("Test")
        newReturnedData = (await fetchReturnedData()) ?? nil
    }
    print("Success")
    
    // Can force-unwrap because newDog is guaranteed a dog.
    return newReturnedData!
}
