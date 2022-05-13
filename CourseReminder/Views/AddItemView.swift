//
//  AddItemView.swift
//  CourseReminder
//
//  Created by Nicole on 2022/5/12.
//

import SwiftUI

struct AddItemView: View {
    
    @Binding var toDoThings : [ToDoThing]
    
    @Binding var isAddItemViewShowing : Bool
    
    @State var newItemName = ""
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 10) {
                TextField("Enter New Thing", text: $newItemName)
                    .padding()
                
            }
            .navigationTitle("Add Item")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    
                    
                    HStack{
                        
                        
                        Button(action: {
                            
                            isAddItemViewShowing = false
                            
                        }, label: {
                            
                            Text("Cancel")
                            
                        })
                        
                        
                        
                        Button(action: {
                            
                            
                            isAddItemViewShowing = false
                            
                            
                            let newId = toDoThings.count + 1
                            
                            
                            let newItem = ToDoThing(id: newId, name: newItemName)
                            
                            toDoThings.append(newItem)
                            
                        }, label: {
                            
                            Text("Done")
                            
                        })
                        
                    }
                    
                    
                }
            }
            
        }
    }
    
}


struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(toDoThings: .constant(exampleThing), isAddItemViewShowing: .constant(true))
    }
}
