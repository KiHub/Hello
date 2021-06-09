//
//  ViewController.swift
//  Hello
//
//  Created by  Mr.Ki on 09.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dateTF: UITextField!
    
    @IBOutlet weak var monthTF: UITextField!
    
    
    @IBOutlet weak var yearTF: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var findDayLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        findDayLabel.layer.cornerRadius = 7
    }


    @IBAction func findDay(_ sender: UIButton) {
        
        let calender = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let date = calender.date(from: dateComponents)
        
        let weekday = dateFormatter.string(from: date!)
        
        resultLabel.text = weekday
        
        
        
    }
}

