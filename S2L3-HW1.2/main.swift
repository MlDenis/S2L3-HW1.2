//
//  main.swift
//  S2L3-HW1.2
//
//  Created by Denis Malyavin on 07.02.2022.
//

import Foundation

class Workout {
    let time: Double
    let distance: Double
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

class Run: Workout {
    let cadence: Double
    
    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {
    let stroke: String
    
    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

var workouts: [Workout] = [
Run(cadence: 80, time: 1200, distance: 4000),
Swim(stroke: "вольный стиль", time: 32.1, distance: 50),
Swim(stroke: "баттерфляй", time: 36.8, distance: 50),
Swim(stroke: "вольный стиль", time: 523.6, distance: 500),
Run(cadence: 90, time: 358.9, distance: 1600)
]


func describeRun(runningWorkout: Run) {
    print("RUNNING WORKOUT ")
    print("time: \(runningWorkout.time) sec.")
    print("distance: \(runningWorkout.distance) m.")
    print("cadence: \(runningWorkout.cadence) steps per min. \n")
}

func describeSwim(swimmingWorkout: Swim) {
    print("SWIMMMING WORKOUT ")
    print("time: \(swimmingWorkout.time) sec.")
    print("distance: \(swimmingWorkout.distance) m.")
    print("cadence: \(swimmingWorkout.stroke) \n")
}


for workout in workouts {
    if let runningWorkout = workout as? Run {
        describeRun(runningWorkout: runningWorkout)
    } else if let swimmingWorkout = workout as? Swim {
        describeSwim(swimmingWorkout: swimmingWorkout)
    }
}


