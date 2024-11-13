//
//  Task.swift
//  TaskAppUI
//
//  Created by Audy M. on 13/11/24.
//

import SwiftUI

// Task Model and Sample Tasks...
// Array of Tasks...
struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

// Total Task Meta View...
struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

// sample Date for Testing...
func getSampleDate(offset: Int)->Date{
    let calender = Calendar.current
    
    let date = calender.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

// Sample Tasks...
var tasks: [TaskMetaData] = [

    TaskMetaData(task: [
    
        Task(title: "Talk to Boss"),
        Task(title: "iPhone 13 Great Design Change😂"),
        Task(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleDate(offset: 1)),
    TaskMetaData(task: [
        
        Task(title: "Talk to Product Design")
    ], taskDate: getSampleDate(offset: -3)),
    TaskMetaData(task: [
        
        Task(title: "Meeting with Product Manager")
    ], taskDate: getSampleDate(offset: -8)),
    TaskMetaData(task: [
        
        Task(title: "Next Version of SwiftUI")
    ], taskDate: getSampleDate(offset: 10)),
    TaskMetaData(task: [
        
        Task(title: "Nothing Much Workout !!!")
    ], taskDate: getSampleDate(offset: -22)),
    TaskMetaData(task: [
        
        Task(title: "iPhone 13 Great Design Change😂")
    ], taskDate: getSampleDate(offset: 15)),
    TaskMetaData(task: [
        
        Task(title: "The App Changes..")
    ], taskDate: getSampleDate(offset: -20)),
]
