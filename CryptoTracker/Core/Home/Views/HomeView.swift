//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Chetan Girase on 28/08/23.
//

import SwiftUI

struct HomeView: View {
  @StateObject var homeViewModel = HomeViewModel()
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        TopMoversView(homeViewModel: homeViewModel)
        Divider()
        
        CoinsList(homeViewModel: homeViewModel)
      }
      .navigationTitle(Constants.livePriceTitle)
    }
  }
}
