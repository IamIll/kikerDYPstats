//
//  PlayoffCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension PlayoffCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayoffCoreData> {
        return NSFetchRequest<PlayoffCoreData>(entityName: "PlayoffCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var type: String?
    @NSManaged public var kikerTournament: KikerTournament?
    @NSManaged public var roundsCoreData: NSSet?

}

// MARK: Generated accessors for roundsCoreData
extension PlayoffCoreData {

    @objc(addRoundsCoreDataObject:)
    @NSManaged public func addToRoundsCoreData(_ value: RoundCoreData)

    @objc(removeRoundsCoreDataObject:)
    @NSManaged public func removeFromRoundsCoreData(_ value: RoundCoreData)

    @objc(addRoundsCoreData:)
    @NSManaged public func addToRoundsCoreData(_ values: NSSet)

    @objc(removeRoundsCoreData:)
    @NSManaged public func removeFromRoundsCoreData(_ values: NSSet)

}
