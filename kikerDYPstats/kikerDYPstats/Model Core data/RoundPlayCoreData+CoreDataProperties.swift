//
//  RoundPlayCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension RoundPlayCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RoundPlayCoreData> {
        return NSFetchRequest<RoundPlayCoreData>(entityName: "RoundPlayCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var valid: Bool
    @NSManaged public var winner: Int64
    @NSManaged public var roundsCoreData: RoundCoreData?
    @NSManaged public var team1ElementsCoreData: Team1ElementCoreData?
    @NSManaged public var playDiscoplineCoreData: NSSet?

}

// MARK: Generated accessors for playDiscoplineCoreData
extension RoundPlayCoreData {

    @objc(addPlayDiscoplineCoreDataObject:)
    @NSManaged public func addToPlayDiscoplineCoreData(_ value: PlayDisciplineCoreData)

    @objc(removePlayDiscoplineCoreDataObject:)
    @NSManaged public func removeFromPlayDiscoplineCoreData(_ value: PlayDisciplineCoreData)

    @objc(addPlayDiscoplineCoreData:)
    @NSManaged public func addToPlayDiscoplineCoreData(_ values: NSSet)

    @objc(removePlayDiscoplineCoreData:)
    @NSManaged public func removeFromPlayDiscoplineCoreData(_ values: NSSet)

}
