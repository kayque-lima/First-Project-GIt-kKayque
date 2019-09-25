//
//  StudentClass.swift
//  collectionViewSimple
//
//  Created by Aluno Mack on 18/09/2019.
//  Copyright © 2019 Leo Mosca. All rights reserved.
//

import Foundation

class StudentClass{
    
    var name:String
    var image:String
    var training:TrainingClass
    
    init(name:String, image:String, training: TrainingClass) {
        self.name = name
        self.image = image
        self.training = training
    }
}
