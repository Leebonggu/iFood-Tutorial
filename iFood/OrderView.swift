//
//  OrderView.swift
//  iFood
//
//  Created by Bonggu Lee on 2021/05/26.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach (order.items) { item in
                        HStack {
                            Image(item.mainImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                                .frame(width: 100, height: 100)
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationBarTitle("Order")
            .listStyle(GroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var order = Order()
    static var previews: some View {
        OrderView()
            .environmentObject(order)
    }
}
