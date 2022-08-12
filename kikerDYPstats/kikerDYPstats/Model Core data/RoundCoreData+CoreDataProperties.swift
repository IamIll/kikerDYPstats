//
//  RoundCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension RoundCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RoundCoreData> {
        return NSFetchRequest<RoundCoreData>(entityName: "RoundCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var deactivated: Bool
    @NSManaged public var kikerTournament: KikerTournament?
    @NSManaged public var roundPlaysCoreData: NSSet?
    @NSManaged public var playoffsCoreData: RoundCoreData?

}

// MARK: Generated accessors for roundPlaysCoreData
extension RoundCoreData {

    @objc(addRoundPlaysCoreDataObject:)
    @NSManaged public func addToRoundPlaysCoreData(_ value: RoundPlayCoreData)

    @objc(removeRoundPlaysCoreDataObject:)
    @NSManaged public func removeFromRoundPlaysCoreData(_ value: RoundPlayCoreData)

    @objc(addRoundPlaysCoreData:)
    @NSManaged public func addToRoundPlaysCoreData(_ values: NSSet)

    @objc(removeRoundPlaysCoreData:)
    @NSManaged public func removeFromRoundPlaysCoreData(_ values: NSSet)

}
