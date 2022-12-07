//
//  Task.swift
//  ToDoDemo
//
//  Created by Gökçe Kahraman on 7.12.2022.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
