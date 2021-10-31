//
//  ItemList.swift
//  ToDoList
//
//  Created by lollipop on 2021/10/14.
//

import SwiftUI

struct ItemDetail: View {
    var item: Item
    var body: some View {
        VStack {
            Text(item.title)
            
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: Item())
    }
}
