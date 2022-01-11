//
//  Menu+CoreDataProperties.swift
//  Test
//
//  Created by Kino Porteous on 12/16/20.
//
//

import Foundation
import CoreData


extension Menu {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Menu> {
        return NSFetchRequest<Menu>(entityName: "Menu")
    }

    @NSManaged public var name: String
    @NSManaged public var price: String
    @NSManaged public var review: String

}

//extension Menu : Identifiable {

//}
