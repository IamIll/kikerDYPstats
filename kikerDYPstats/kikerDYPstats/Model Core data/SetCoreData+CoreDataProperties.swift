//
//  SetCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension SetCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SetCoreData> {
        return NSFetchRequest<SetCoreData>(entityName: "SetCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var team1: Int64
    @NSManaged public var team2: Int64
    @NSManaged public var playDisciplineCoreData: PlayDisciplineCoreData?

}
