//
//  ItemRow.swift
//  iFood
//
//  Created by Bonggu Lee on 2021/05/25.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    var body: some View {
        NavigationLink(destination: ItemDetail(item: item)) {
            HStack {
                Image(item.mainImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.headline)
                    Text(String("$\(item.price)"))
                        .foregroundColor(.secondary)
                }

            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
