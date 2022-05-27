//
//  ScheduleViewController.swift
//  FORDS FLAMES TC
//
//  Created by  on 4/8/22.
//

import UIKit
import SafariServices

class ScheduleViewController: UIViewController  {
    
    
    var safariVC = SFSafariViewController(url: URL(string: "https://www.teamreach.com/")!)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func addView(){
        addChild(safariVC)
        self.view.addSubview(safariVC.view)
        safariVC.didMove(toParent: self)
   constraints()
    }
    
    
    func constraints(){
        self.safariVC.view.translatesAutoresizingMaskIntoConstraints = false
     
        self.safariVC.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 1).isActive = true
       
        self.safariVC.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 1).isActive = true
       
        self.safariVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 1).isActive = true
        
        self.safariVC.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 1).isActive = true

    }
    
    
    @IBAction func scheduleButton(_ sender: UIButton) {
    addView()
    }
    

}
