//
//  ViewModel.swift
//  ToDoList
//
//  Created by lollipop on 2021/10/31.
//

import Foundation

class ViewModel: ObservableObject {
     @Published var todoItems = [
     Item(),
     Item(),
     ]
    
}
