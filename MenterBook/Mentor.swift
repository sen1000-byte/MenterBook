//
//  Mentor.swift
//  MenterBook
//
//  Created by Chihiro Nishiwaki on 2021/02/06.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: self.imageName)!
    }
}
