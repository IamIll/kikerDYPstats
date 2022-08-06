//
//  ModelKikerJSON.swift
//  kikerDYPstats
//
//  Created by Илья Дунайцев on 06.08.2022.
//

import Foundation

struct Kiker: Decodable {
    let id, type, name: String
    let players: [KikerPlayer]
    let teams: [Team]
    let rounds: [Round]
    let playoff: [Playoff]?
    let mode: String
    
    enum CodingKeys: String, CodingKey {
           case id = "_id"
           case type, name, players, teams, rounds, playoff, mode
       }
}

struct KikerPlayer: Decodable {
    let id: String
    let name: String
    let weight, startIndex: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name = "_name"
        case weight, startIndex
    }
}

struct Team: Decodable {
    let id: String
    let players: [Team1Element]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case players
    }
}

struct Team1Element: Codable {
    let id: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
    }
}

struct Round: Decodable {
    let id: String
    let plays: [RoundPlay]?
    let name: String
    let deactivated: Bool?

    enum CodingKeys: String, CodingKey {
         case id = "_id"
         case plays, name, deactivated
     }
}

struct RoundPlay: Decodable {
    let id: String
    let valid: Bool
    let team1, team2: Team1Element
    let disciplines: [PlayDiscipline]
    let winner: Int?

    enum CodingKeys: String, CodingKey {
         case id = "_id"
         case valid, team1, team2, disciplines
         case winner
     }
}

struct PlayDiscipline: Decodable {
    let id: String
    let sets: [Set]
    let playID: String

    enum CodingKeys: String, CodingKey {
         case id = "_id"
         case sets
         case playID = "playId"
     }
}

struct Set: Decodable {
    let id: String
    let team1, team2: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case team1, team2
    }
}

struct Playoff: Decodable {
    let id, type: String
    let levels: [Round]

    enum CodingKeys: String, CodingKey {
         case id = "_id"
         case type, levels
     }
}
