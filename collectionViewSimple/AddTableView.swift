//
//  AddTableView.swift
//  collectionViewSimple
//
//  Created by Aluno Mack on 18/09/2019.
//  Copyright © 2019 Leo Mosca. All rights reserved.
//

import UIKit

class AddTableView: UITableViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var photoField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    weak var viewController:ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save(){
        if let name = nameField.text, let photo = photoField.text {
            var student:StudentClass = StudentClass(name: name, image: photo)
            viewController?.student.append(student)
            self.navigationController?.popViewController(animated: true)
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
