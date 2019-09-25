//
//  ViewController.swift
//  collectionViewSimple
//
//  Created by Aluno Mack on 17/09/2019.
//  Copyright © 2019 Leo Mosca. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var student:[StudentClass] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Alunos"
        
        //Plans
        var plan0:Plans = Plans(title: [], exercise: [])
        plan0.title = ["Bíceps"]
        plan0.exercise = ["Rosca 45 | 3x10 | 30Kg"]
        var plan1:Plans = Plans(title: [], exercise: [])
        plan1.title = ["Costas"]
        plan1.exercise = ["Barra Fixa| 3x8 | 80Kg"]
        var plan2:Plans = Plans(title: [], exercise: [])
        plan2.title = ["Tríceps"]
        plan2.exercise = ["Testa | 3x12 | 10Kg"]
        
        //Training
        var training:TrainingClass = TrainingClass(planA:plan0 , planB: plan1, planC: plan2)
        
        //Students
        let camila = StudentClass(name: "Camila", image: "1", training: training)
        student.append(camila)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return student.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let row = indexPath.row
        cell.myImage.image = UIImage(named: student[row].image)
        cell.myName.text = student[row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "days"{
            let workoutViewController = segue.destination as! WorkoutViewController
            let item = collectionView.indexPathsForSelectedItems
            workoutViewController.student = student[item![0].row]
        }
        if segue.identifier == "addSegue"{
            let addTableView = segue.destination as! AddTableView
            addTableView.viewController = self
        }
    }
}

