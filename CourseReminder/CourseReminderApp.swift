//
//  CourseReminderApp.swift
//  CourseReminder
//
//  Created by Nicole on 2022/5/11.
//

import SwiftUI

@main
struct CourseReminderApp: App {
    
    @State var toDoThings: [ToDoThing] = []
    
    var body: some Scene {
        
        WindowGroup {
            CourseView(toDoThings: $toDoThings)
        }
    }
}
