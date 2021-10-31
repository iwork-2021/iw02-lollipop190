//
//  ListView.swift
//  ToDoList
//
//  Created by lollipop on 2021/10/14.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var viewmodel:ViewModel
    
    var body: some View {
        NavigationView {
            
        
        List{
            ForEach(viewmodel.todoItems){
            item in ItemView(item: item)
            }.onDelete(perform: deleteItem)
        }
        .listStyle(InsetListStyle())
        .navigationBarTitle("ToDo",displayMode: .automatic)
        .navigationBarItems(leading: Text("\(viewmodel.todoItems.count)").foregroundColor(.blue)
            .font(.largeTitle)
        )
        .navigationBarItems(trailing: Button(action: {
            viewmodel.todoItems.append(Item())
        }){
            Image(systemName: "plus")
        }
        )
        
        }

    }
    
    func deleteItem(as offsets: IndexSet) {
        viewmodel.todoItems.remove(atOffsets: offsets)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListView(viewmodel: ViewModel())
    }
}
