//
//  WorkoutViewController.swift
//  collectionViewSimple
//
//  Created by Aluno Mack on 17/09/2019.
//  Copyright © 2019 Leo Mosca. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController {
    
    var student:StudentClass?
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var title1: UILabel!
    
    @IBOutlet weak var exercise1: UILabel!
    
    @IBOutlet weak var exercise2: UILabel!
    
    //plans

    override func viewDidLoad() {
        super.viewDidLoad()
        if student != nil{
            
        }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = student?.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }


}
