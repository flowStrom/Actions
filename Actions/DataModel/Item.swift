//
//  Item.swift
//  Actions
//
//  Created by Tushar Chhabra on 2018-03-15.
//  Copyright © 2018 Tushar Chhabra. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title = ""
    @objc dynamic var done = false
    @objc dynamic var dateCreated = Date()
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
