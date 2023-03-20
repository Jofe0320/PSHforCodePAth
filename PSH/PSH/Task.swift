//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your Favorite Person",
                 description: "Please enter a photo with your favorite person"),
            Task(title: "Your favorite restaurant",
                 description: "Please enter a photo of your favorite restaurant in the world"),
            Task(title: "Most memorable experience place",
                 description: "Please enter an image of your favorite place in the world"),
            Task(title: "Future vacation",
                 description:  "Enter the image of a place that you want to visit")
        ]
    }
}
