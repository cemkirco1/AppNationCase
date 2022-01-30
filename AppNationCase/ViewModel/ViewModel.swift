//
//  ViewModel.swift
//  AppNationCase
//
//  Created by cem on 30.01.2022.
//

import Foundation

class ViewModel {
    
    weak var owned: ViewController?

    var flightDetails : SpaceXAPIResponse? {
        didSet {
            owned?.setupUI()
        }
    }
    
    func fetch() {
        getFlightDetails()
    }
    
    private func getFlightDetails() {
        AppServiceClient.shared.getSpaceXFlightDetails { (response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            self.flightDetails = response
        }
    }
}

