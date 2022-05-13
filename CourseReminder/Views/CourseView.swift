//
//  CourseView.swift
//  CourseReminder
//
//  Created by Nicole on 2022/5/11.
//

import SwiftUI

struct CourseView: View {
    
    @Binding var toDoThings : [ToDoThing]
    
    @State var isAddItemViewShowing = false
    
    @State var searchText = ""
    
    var filteredListOfThings: [ToDoThing] {
        if searchText.isEmpty {
            return toDoThings
        } else {
            return toDoThings
                .filter { currentThing in
                    return currentThing.name.lowercased().contains(searchText.lowercased())
                }
        }
    }
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(filteredListOfThings) { currentThing in
                    Text(currentThing.name)
                }
                .onDelete(perform: self.delete)

            }
            .searchable(text: $searchText)
            .navigationTitle("To Do")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    
                    Button(action: {
                        
                        isAddItemViewShowing = true
                        
                    }, label: {
                        
                        Text("Add new item")
                        
                    })
                }
            }
            .sheet(isPresented: $isAddItemViewShowing) {
                AddItemView(toDoThings: $toDoThings,
                            isAddItemViewShowing: $isAddItemViewShowing)
            }
            .navigationBarItems(trailing: EditButton())
            
        }
    }
    
    func delete(at offsets : IndexSet) {
        toDoThings.remove(atOffsets: offsets)
    }
    
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(toDoThings: .constant(exampleThing))
    }
}
