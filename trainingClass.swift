//
//  TrainingClass.swift
//  collectionViewSimple
//
//  Created by Aluno Mack on 18/09/2019.
//  Copyright © 2019 Leo Mosca. All rights reserved.
//

import Foundation

class TrainingClass{

    var student:StudentClass
    var planA:Plans
    var planB:Plans
    var planC:Plans

    init(planA:Plans, planB:Plans, planC:Plans) {
        self.planA = planA
        self.planB = planB
        self.planC = planC
    }

}
