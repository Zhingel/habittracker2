//
//  NewHabbit.swift
//  habittracker2
//
//  Created by Стас Жингель on 23.08.2021.
//

import UIKit

class NewHabbit: UIViewController {
    weak var newTask : UITextField!
    var newPlace : Task!
    override func viewDidLoad() {
        super.viewDidLoad()
     //   addConstraints()
        // Do any additional setup after loading the view.
        let sampleTextField =  UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
           sampleTextField.placeholder = "Enter text here"
           sampleTextField.font = UIFont.systemFont(ofSize: 15)
           sampleTextField.borderStyle = UITextField.BorderStyle.roundedRect
           sampleTextField.autocorrectionType = UITextAutocorrectionType.no
           sampleTextField.keyboardType = UIKeyboardType.default
           sampleTextField.returnKeyType = UIReturnKeyType.done
           sampleTextField.clearButtonMode = UITextField.ViewMode.whileEditing
           sampleTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
           self.view.addSubview(sampleTextField)
        sampleTextField.translatesAutoresizingMaskIntoConstraints = false
        sampleTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        sampleTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        newTask = sampleTextField
       
    }
    
    func newPlaces() {
        newPlace = Task(toDo: newTask.text!)
    }

    

}
