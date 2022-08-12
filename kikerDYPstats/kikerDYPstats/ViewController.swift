//
//  ViewController.swift
//  kikerDYPstats
//
//  Created by Илья Дунайцев on 06.08.2022.
//

import UIKit
import FirebaseStorage

class ViewController: UIViewController {
    
    let contex = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var dataFireBase: Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        storageDataDownload(completion: { data in
            print(data)
            self.dataFireBase = data
            self.parsingDataBase()
            self.fetchLasVegas()
            
        })
    }
    
    
    func storageDataDownload(completion: @escaping (Data?) -> Void) {
            
        let storage = Storage.storage()
        
        let storageReference = storage.reference().child("kicker.json")
        
        storageReference.getData(maxSize: 1 * 1024 * 1024) { data, error in
                
                guard let data = data else {return}
            
            completion(data)
            
                if let error = error {
                    print("Ошибкааааа \(error)")
                } else {return}
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.parsingDataBase()
    }
    
    func parsingDataBase() {
        
        do {
        
        guard let dataBase = dataFireBase else {return}
        print(dataBase)
        
        let json = try JSONSerialization.jsonObject(with: dataBase, options: [])
            
        let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
        
        let result = try JSONDecoder().decode(Kiker.self, from: jsonData)

            
        var kikerTournament = KikerTournament(context: self.contex)
            
            kikerTournament.id = result.id
            kikerTournament.type = result.type
            kikerTournament.name = result.name
            
        let kikerPlayer = KikerPlayerCoreData(context: self.contex)
            
            let kikerist = result.players
            print(kikerist.count)
            
            for kik in result.players {
                
                kikerPlayer.id = kik.id
                kikerPlayer.name = kik.name
                kikerPlayer.weight = Int64(kik.weight)
                kikerPlayer.starIndex = Int64(kik.startIndex)
                kikerTournament.addToKikerPlayerCoreData(kikerPlayer)
            }
            print(kikerTournament.kikerPlayerCoreData?.count)
            
            let kikerTeam = TeamCoreData(context: self.contex)
            let kiker1ElementTeam = Team1ElementCoreData(context: self.contex)
            
            for team in result.teams {
                
                kikerTeam.id = team.id
                kikerTeam.team1ElementsCoreData?.adding(team.players)
            }
            
            let kikerRound = RoundCoreData(context: self.contex)
            
            for round in result.rounds {
                
                kikerRound.id = round.id
                kikerRound.name = round.name
                kikerRound.deactivated = round.deactivated ?? false
//                kikerRound.roundPlaysCoreData = round.plays
            }
            
            let kikerPlayoff = PlayoffCoreData(context: self.contex)
            
            guard let playoff = result.playoff else {return}
                 
               for play in playoff {
                   kikerPlayoff.id = play.id
                   kikerPlayoff.type = play.type
//                   kikerPlayoff.roundsCoreData = play.levels
            }
            
            
        self.saveObject()
        }catch {print("Ошибкаааа \(error)")}
    }
    
    func saveObject() {
        
        do {
            try contex.save()
        }
        catch {
        }
        fetchLasVegas()
    }
    
    func fetchLasVegas() {
        
        let kikerok = try? contex.fetch(KikerTournament.fetchRequest())
        
        let playerok = try? contex.fetch(KikerPlayerCoreData.fetchRequest())
        
        let teams = try? contex.fetch(TeamCoreData.fetchRequest())
        
        print(playerok?.count)
        
        print(playerok)
        print(teams)
        
    }
}
    

