//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Tina Jureško on 05.10.2024..
//

import Foundation
import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = [] //broadcasts when changed
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { //used for UI changes
                self.isLoading = false
                switch result {
                case .success(let appetizers): //network call populates appetizers array
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    print(error.localizedDescription)
                    switch error {
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                    
                }
            }
        }
    }
}
