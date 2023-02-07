//
//  ViewController.swift
//  MentorBook
//
//  Created by 木村美希 on 2023/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorAray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mentorAray.append(Mentor(name: "ながた", course: "iphone", imageName: "nagata.jpg"))
        mentorAray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo.jpg"))
        mentorAray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taithi.jpg"))
    }
        
        
    func setUI() {
        imageView.image = mentorAray[index].getImage()
            nameLabel.text = mentorAray[index].name
            courseLabel.text = mentorAray[index].course
        }
    

    
    
    
    @IBAction func mae() {
        
        if index == 0{
            index = 2
            setUI()
            
        } else {
            
            index = index - 1
            setUI()
        }
    }
    
    @IBAction func tugi() {
        
        if index == 2{
            index = 0
            setUI()
            
        } else {
            
            index = index + 1
            setUI()
        }
    }


}

