//
//  Category.swift
//  Actions
//
//  Created by Tushar Chhabra on 2018-03-15.
//  Copyright © 2018 Tushar Chhabra. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name = ""
    let items = List<Item>()
}
