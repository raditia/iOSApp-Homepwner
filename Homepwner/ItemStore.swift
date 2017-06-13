//
//  ItemStore.swift
//  Homepwner
//
//  Created by Raditia Madya on 6/7/17.
//  Copyright © 2017 Universitas Gadjah Mada. All rights reserved.
//

import Foundation

class ItemStore {
    
    var allItems: [Item] = []
    
    //Creating 5 random items
    /*init() {
        for _ in 0..<5 {
            createItem()
        }
    }*/
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
}
