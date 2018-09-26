//
//  ItemStore.swift
//  homepwner
//
//  Created by Blake Cook on 9/20/18.
//  Copyright © 2018 Blake Cook. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allitems = [Item]()
    
//    init(){
//        for _ in 0..<5{
//            createItem()
//        }
//    }
    
    @discardableResult func createItem() -> Item{
        let newItem = Item(random: true)
        allitems.append(newItem)
        return newItem
    }
    
    func removeItem(_ item: Item){
        if let index = allitems.index(of: item){
            allitems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int){
        if fromIndex == toIndex{
            return
        }
        let movedItem = allitems[fromIndex]
        
        allitems.remove(at: fromIndex)
        
        allitems.insert(movedItem, at: toIndex)
    }

}
