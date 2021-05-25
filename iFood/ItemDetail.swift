//
//  ItemDetail.swift
//  iFood
//
//  Created by Bonggu Lee on 2021/05/25.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem
    var body: some View {
        VStack {
            HStack {
                Image(item.mainImage)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Button("Order This") {
                self.order.add(item: self.item)
            }
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.black)
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var order = Order()
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
                .environmentObject(order)
        }
    }
}
