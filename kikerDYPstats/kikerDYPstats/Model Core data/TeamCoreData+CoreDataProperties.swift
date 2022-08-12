//
//  TeamCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension TeamCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TeamCoreData> {
        return NSFetchRequest<TeamCoreData>(entityName: "TeamCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var kikerTournament: KikerTournament?
    @NSManaged public var team1ElementsCoreData: NSSet?

}

// MARK: Generated accessors for team1ElementsCoreData
extension TeamCoreData {

    @objc(addTeam1ElementsCoreDataObject:)
    @NSManaged public func addToTeam1ElementsCoreData(_ value: Team1ElementCoreData)

    @objc(removeTeam1ElementsCoreDataObject:)
    @NSManaged public func removeFromTeam1ElementsCoreData(_ value: Team1ElementCoreData)

    @objc(addTeam1ElementsCoreData:)
    @NSManaged public func addToTeam1ElementsCoreData(_ values: NSSet)

    @objc(removeTeam1ElementsCoreData:)
    @NSManaged public func removeFromTeam1ElementsCoreData(_ values: NSSet)

}
