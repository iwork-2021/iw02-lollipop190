//
//  ContentView.swift
//  ToDoList
//
//  Created by lollipop on 2021/10/14.
//

import SwiftUI

struct ItemView: View {
    @State var item: Item
    var body: some View {
        HStack {
            Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle").imageScale(.large).foregroundColor(.blue).onTapGesture {
                item.isDone.toggle()
            }
            TextField("",text: $item.title)
        }
       
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item(title: "title", isDone: true))
    }
}
