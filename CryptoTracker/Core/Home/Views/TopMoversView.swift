//
//  TopMoversView.swift
//  CryptoTracker
//
//  Created by Chetan Girase on 28/08/23.
//

import SwiftUI

struct TopMoversView: View {
  @StateObject var homeViewModel: HomeViewModel
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(Constants.topCurrenciesTitle)
        .font(.headline)
      ScrollView(.horizontal, showsIndicators: false) {
        HStack (spacing: 16) {
          ForEach(homeViewModel.topMovingCoins) { coin in
            TopMoversItemView(coin: coin)
          }
        }
      }
    }
    .padding()
  }
}

struct TopMoversView_Previews: PreviewProvider {
  static var previews: some View {
    TopMoversView(homeViewModel: HomeViewModel())
  }
}
