//
//  TaskCell.swift
//  Reminders
//
//  Created by Jackson Taylor on 2022-01-25.
//

import SwiftUI

struct TaskCell: View {
    
    @ObservedObject var task: Task
    
    var taskColor: Color {
        switch task.priority {
        case .high:
            return Color.red
        case .medium:
            return Color.blue
        case.low:
            return Color.primary
        }
    }
    
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
