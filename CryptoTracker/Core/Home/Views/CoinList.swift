//
//  CoinList.swift
//  CryptoTracker
//
//  Created by Chetan Girase on 28/08/23.
//

import SwiftUI

struct CoinsList: View {
  @StateObject var homeViewModel: HomeViewModel
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(Constants.allCoinsTitle)
        .font(.headline)
        .padding()
      HStack{
        Text(Constants.coinsHeaderText)
        Spacer()
        Text(Constants.priceHeaderText)
      }
      .font(.caption)
      .foregroundColor(.gray)
      .padding(.horizontal)
      ScrollView {
        ForEach(homeViewModel.coins) { coin in
          CoinView(coin: coin)
        }
        .background(Color("ItemBackgroundColor"))
      }
    }
  }
}
