//
//  PageViewController.swift
//  DOCScreenV2
//
//  Created by Nik on 2017-10-11.
//  Copyright © 2017 Nik. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    @IBOutlet weak var moodScore: UILabel!
    @IBOutlet weak var abstractScore: UILabel!
    @IBOutlet weak var memoryScore: UILabel!
    @IBOutlet weak var apneaScore: UILabel!
    
    @IBOutlet weak var docImage: UIImageView!
    
    @IBOutlet weak var clockScore: UILabel!
    
    
    @IBOutlet weak var educationLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        nameLabel.text = DataStorage.name
        sexLabel.text = DataStorage.sex
        dateLabel.text = DataStorage.date
        educationLabel.text = DataStorage.education
        
        if DataStorage.age != -1 {
            
            ageLabel.text = String(DataStorage.age)
            
        }
      
    
        if DataStorage.weight != -1 {
            
         weightLabel.text = String(describing: DataStorage.weight)
        }
   
        
        if DataStorage.height != -1 {
            
            heightLabel.text = String(describing: DataStorage.height)
        }
   
        if DataStorage.BMI != -1 {
            
               bmiLabel.text = String(describing: DataStorage.BMI)
            
        }
     
    

        if DataStorage.memoryScore != -1 {
            
              memoryScore.text = "[ \(DataStorage.memoryScore) ]"
        }
        
  
        if DataStorage.apneaScore != -1 {
            
            apneaScore.text = "[ \(DataStorage.apneaScore) ]"

        }
        

        if DataStorage.moodScore != -1 {
            
        moodScore.text = "[ \(DataStorage.moodScore) ]"
        
        }
        

        
        if DataStorage.abstractScore != -1 {
            abstractScore.text = "[ \(DataStorage.apneaScore) ]"
            
            
        }
        else {
            abstractScore.text = "[   ]"
            moodScore.text = "[   ]"
            clockScore.text = "[       ]"
            memoryScore.text = "[   ]"
            apneaScore.text = "[   ]"
            bmiLabel.text = ""
            weightLabel.text = ""
               ageLabel.text = ""
            heightLabel.text = ""
            
        }
        
        
        docImage.image = DataStorage.clockImage
    
        if DataStorage.clockScore != -1 {

            clockScore.text =  "[ \(DataStorage.clockScore) ]"
        }
        
 
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        docImage.layer.borderWidth = 2;
        docImage.layer.borderColor = UIColor.docRed().cgColor;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    


}
