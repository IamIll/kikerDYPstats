//
//  PlayDisciplineCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension PlayDisciplineCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayDisciplineCoreData> {
        return NSFetchRequest<PlayDisciplineCoreData>(entityName: "PlayDisciplineCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var playID: String?
    @NSManaged public var setsCoreData: NSSet?

}

// MARK: Generated accessors for setsCoreData
extension PlayDisciplineCoreData {

    @objc(addSetsCoreDataObject:)
    @NSManaged public func addToSetsCoreData(_ value: SetCoreData)

    @objc(removeSetsCoreDataObject:)
    @NSManaged public func removeFromSetsCoreData(_ value: SetCoreData)

    @objc(addSetsCoreData:)
    @NSManaged public func addToSetsCoreData(_ values: NSSet)

    @objc(removeSetsCoreData:)
    @NSManaged public func removeFromSetsCoreData(_ values: NSSet)

}
