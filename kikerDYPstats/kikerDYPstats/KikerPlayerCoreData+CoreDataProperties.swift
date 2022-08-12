//
//  KikerPlayerCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension KikerPlayerCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<KikerPlayerCoreData> {
        return NSFetchRequest<KikerPlayerCoreData>(entityName: "KikerPlayerCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var starIndex: Int64
    @NSManaged public var weight: Int64
    @NSManaged public var kikerTournament: KikerTournament?

}
