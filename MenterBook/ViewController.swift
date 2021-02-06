//
//  ViewController.swift
//  MenterBook
//
//  Created by Chihiro Nishiwaki on 2021/02/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageVIew: UIImageView!
    @IBOutlet var nammeLabel: UILabel!
    @IBOutlet var courseLabbel: UILabel!
    
    var mentorArray: [Mentor] = []
    var index: Int! = 0
    
    func setUI(_ index: Int) {
        imageVIew.image = mentorArray[index].getImage()
        nammeLabel.text = mentorArray[index].name
        courseLabbel.text = mentorArray[index].course
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS, WebD"))
        index = 0
        setUI(index)
        
    }
    
    @IBAction func mae() {
        if index == 0{
            index = mentorArray.count - 1
        }else{
            index = index - 1
        }
        setUI(index)
    }
    
    @IBAction func tugi(){
        if index >= mentorArray.count - 1{
            index = 0
        }else{
            index = index + 1
        }
        setUI(index)
    }

}

