//
//  Category.swift
//  Todoey
//
//  Created by Alan Coman on 2/11/18.
//  Copyright © 2018 Alan Coman. All rights reserved.
//

import Foundation
import RealmSwift

class Category : Object {
    @objc dynamic var name : String = ""
    
    let items = List <Item>()
    
}
