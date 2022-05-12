//
//  CourseView.swift
//  CourseReminder
//
//  Created by Nicole on 2022/5/11.
//

import SwiftUI

struct CourseView: View {
    
    @Binding var toDoThings : [ToDoThing]
    
    var body: some View {
        NavigationView {
            List {
                List(toDoThings) { currentTing in
                    Text(currentTing.name)
                }
            }
            .navigationTitle("To Do")
        
        
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                
                Button(action: {
                    print("yeah")
                }, label: {
                    Text("Add new item")
                })
                
            }
        }
        }
            }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(toDoThings: .constant(exampleThing))
    }
}
