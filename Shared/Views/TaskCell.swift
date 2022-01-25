//
//  TaskCell.swift
//  Reminders
//
//  Created by Jackson Taylor on 2022-01-25.
//

import SwiftUI

struct TaskCell: View {
    
    var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle") .onTapGesture {
                
                task.completed.toggle()
            }
            
            Text(task.description)
        }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: testData[0])
    }
}
