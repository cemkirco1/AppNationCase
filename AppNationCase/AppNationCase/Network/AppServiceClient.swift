//
//  AppServiceClient.swift
//  AppNationCase
//
//  Created by cem on 30.01.2022.
//

import Foundation
import Alamofire

class AppServiceClient {
    
    static let shared = AppServiceClient()

    func getSpaceXFlightDetails(completionHandler: @escaping(_ flightDetail: SpaceXAPIResponse?, _ error: Error?) -> Void) {
        
        AF.request("https://api.spacexdata.com/v4/launches/latest", method: .get,
                   parameters: nil,
                   encoding: URLEncoding(destination: .queryString)).response { (response) in
            if let data = response.data {
                do {
                    let elon = try JSONDecoder.init().decode(SpaceXAPIResponse.self, from: data)
                    completionHandler(elon, nil)
                } catch {
                    completionHandler(nil, error)
                }
            }
        }
    }
}
