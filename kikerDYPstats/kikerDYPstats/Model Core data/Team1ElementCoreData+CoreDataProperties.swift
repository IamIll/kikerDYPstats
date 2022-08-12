//
//  Team1ElementCoreData+CoreDataProperties.swift
//  
//
//  Created by Илья Дунайцев on 11.08.2022.
//
//

import Foundation
import CoreData


extension Team1ElementCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Team1ElementCoreData> {
        return NSFetchRequest<Team1ElementCoreData>(entityName: "Team1ElementCoreData")
    }

    @NSManaged public var id: String?
    @NSManaged public var teamsCoreData: TeamCoreData?
    @NSManaged public var team1ElementCoreData: RoundPlayCoreData?

}
