//
//  Constants.swift
//  CryptoTracker
//
//  Created by coditas on 28/08/23.
//

import Foundation

// App Strings
struct Constants {
  static let livePriceTitle = "Live Prices"
  static let topCurrenciesTitle = "Top Currencies"
  static let allCoinsTitle = "All Coins"
  static let coinsHeaderText = "Coins"
  static let priceHeaderText = "Price"
  static let okButtonTitle = "OK"
}

// API Constnts URL
struct APIUrl {
  static let apiURL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h";
}
