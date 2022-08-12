//
//  KikerTournament+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension KikerTournament {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<KikerTournament> {
        return NSFetchRequest<KikerTournament>(entityName: "KikerTournament")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var mode: String?
    @NSManaged public var kikerPlayerCoreData: NSSet?
    @NSManaged public var teamsCoreData: NSSet?
    @NSManaged public var roundsCoreData: NSSet?
    @NSManaged public var playoffCoreData: NSSet?

}

// MARK: Generated accessors for kikerPlayerCoreData
extension KikerTournament {

    @objc(addKikerPlayerCoreDataObject:)
    @NSManaged public func addToKikerPlayerCoreData(_ value: KikerPlayerCoreData)

    @objc(removeKikerPlayerCoreDataObject:)
    @NSManaged public func removeFromKikerPlayerCoreData(_ value: KikerPlayerCoreData)

    @objc(addKikerPlayerCoreData:)
    @NSManaged public func addToKikerPlayerCoreData(_ values: NSSet)

    @objc(removeKikerPlayerCoreData:)
    @NSManaged public func removeFromKikerPlayerCoreData(_ values: NSSet)

}

// MARK: Generated accessors for teamsCoreData
extension KikerTournament {

    @objc(addTeamsCoreDataObject:)
    @NSManaged public func addToTeamsCoreData(_ value: TeamCoreData)

    @objc(removeTeamsCoreDataObject:)
    @NSManaged public func removeFromTeamsCoreData(_ value: TeamCoreData)

    @objc(addTeamsCoreData:)
    @NSManaged public func addToTeamsCoreData(_ values: NSSet)

    @objc(removeTeamsCoreData:)
    @NSManaged public func removeFromTeamsCoreData(_ values: NSSet)

}

// MARK: Generated accessors for roundsCoreData
extension KikerTournament {

    @objc(addRoundsCoreDataObject:)
    @NSManaged public func addToRoundsCoreData(_ value: RoundCoreData)

    @objc(removeRoundsCoreDataObject:)
    @NSManaged public func removeFromRoundsCoreData(_ value: RoundCoreData)

    @objc(addRoundsCoreData:)
    @NSManaged public func addToRoundsCoreData(_ values: NSSet)

    @objc(removeRoundsCoreData:)
    @NSManaged public func removeFromRoundsCoreData(_ values: NSSet)

}

// MARK: Generated accessors for playoffCoreData
extension KikerTournament {

    @objc(addPlayoffCoreDataObject:)
    @NSManaged public func addToPlayoffCoreData(_ value: PlayoffCoreData)

    @objc(removePlayoffCoreDataObject:)
    @NSManaged public func removeFromPlayoffCoreData(_ value: PlayoffCoreData)

    @objc(addPlayoffCoreData:)
    @NSManaged public func addToPlayoffCoreData(_ values: NSSet)

    @objc(removePlayoffCoreData:)
    @NSManaged public func removeFromPlayoffCoreData(_ values: NSSet)

}
