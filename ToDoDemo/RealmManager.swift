//
//  RealmManager.swift
//  ToDoDemo
//
//  Created by Gökçe Kahraman on 7.12.2022.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    private(set) var localRealm: Realm?
    
    init() {
        openRealm()
    }
    
    func openRealm(){
        do{
            let config = Realm.Configuration(schemaVersion: 1)
            
            Realm.Configuration.defaultConfiguration = config
            
            localRealm = try Realm()
            
        }catch{
            print("Error opening Realm: \(error)" )
        }
    }
}
