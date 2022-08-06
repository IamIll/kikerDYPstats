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
    
    var gamer: [LasVegas]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storage = Storage.storage()
        
        let storageReference = storage.reference().child("kicker.json")
        
        storageReference.getData(maxSize: 1 * 1024 * 1024) { data, error in
            guard let data = data else {return}
            
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                
                let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
                
                let result = try JSONDecoder().decode(Kiker.self, from: jsonData)
                print(result.name)
                print(result.players)
                
            }catch{ }
            
            self.saveObject()
            self.fetchLasVegas()
            
        }
    }
    func saveObject() {
        
        let gamerObject = LasVegas(context: contex)
        
        gamerObject.onePerson = "Ilay"
        gamerObject.twoPerson = "Dima"
        gamerObject.win = true
        gamerObject.rulet = 15
        
        print(gamerObject.twoPerson)
        
        do {
            try contex.save()
        }
        catch {
        }
    }
    
    func fetchLasVegas() {
        
        gamer = try? contex.fetch(LasVegas.fetchRequest())
        
        print(gamer)
    }
}
    

