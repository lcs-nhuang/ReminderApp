//
//  ToDoThing.swift
//  CourseReminder
//
//  Created by Nicole on 2022/5/12.
//

import Foundation

struct ToDoThing : Identifiable {
    
    let id: Int
    let name: String
    
}

let exampleThing = [ ToDoThing(id: 1, name: "Finish my home work") ]
