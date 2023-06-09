//
//  ListRowView.swift
//  Todo
//
//  Created by Mohamed Salah on 24/04/2023.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle").foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical , 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "First Item", isCompleted: false)
    static var item2 = ItemModel(title: "second Item", isCompleted: false)

    static var previews: some View {
        Group {
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
