//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Chetan Girase on 28/08/23.
//

import Foundation
import SwiftUI

class HomeViewModel : ObservableObject {
  @Published var coins = [Coin]()
  @Published var topMovingCoins = [Coin]()
  
  init() {
    fetchCoinData()
  }
  
  func fetchCoinData() {
    let urlString = APIUrl.apiURL
    guard let url = URL(string: urlString) else {return}
    URLSession.shared.dataTask(with: url) { data, res, error in
      if let error = error {
        AlertUtils.displayError(title: "Error while fetching coins!", message: error.localizedDescription)
        return
      }
      
      guard let data = data else { return }
      
      do{
        let coins = try JSONDecoder().decode([Coin].self, from: data)
        DispatchQueue.main.async {
          self.coins = coins
          self.configureTopMoverCoins()
        }
      }catch let error {
        AlertUtils.displayError(title: "Error while configuring coins!", message: error.localizedDescription)
      }
    }.resume()
  }
  
  func configureTopMoverCoins() {
    let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H })
    self.topMovingCoins = Array(topMovers.prefix(10))
  }
}
