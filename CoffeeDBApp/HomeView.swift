//
//  ContentView.swift
//  CoffeeDBApp
//
//  Created by Yağız Ata Özkan on 22.02.2021.
//

import SwiftUI

struct HomeView: View {
    
    var categories:[String:[Drink]] {
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue
            }
        )
    }
    
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(),id: \String.self)
            {
                key in DrinkRow(categoryName: "\(key)Drinks".uppercased(), drinks: self.categories[key]!).frame(height:320)
                    .padding(.top)
                    .padding(.bottom)
            }
            .navigationBarTitle(Text("COFFEE DB"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
