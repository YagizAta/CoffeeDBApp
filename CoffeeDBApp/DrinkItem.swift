//
//  DrinkItem.swift
//  CoffeeDBApp
//
//  Created by Yağız Ata Özkan on 22.02.2021.
//

import SwiftUI

struct DrinkItem: View {
    
    var drink:Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName).resizable().renderingMode(.original).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 300, height: 170).cornerRadius(5).shadow(radius: 10)
            VStack(alignment: .leading, spacing: 5.0)
            {
                Text(drink.name)
                    .accentColor(.primary).font(.headline)
                Text(drink.description)
                    .accentColor(.secondary).font(.subheadline).multilineTextAlignment(.leading).lineLimit(2)
                    .frame(height: 40)
            }
           
          
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
