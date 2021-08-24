//
//  NewHabbit.swift
//  habittracker2
//
//  Created by Стас Жингель on 23.08.2021.
//

import UIKit

class NewHabbit: UIViewController {
    weak var newTaskTextfield : UITextField!
    weak var chooseTime : UIDatePicker!
    var newTask : Task!
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
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
            newTaskTextfield = sampleTextField
        
        let date = UIDatePicker()
        date.datePickerMode = UIDatePicker.Mode.time
        date.preferredDatePickerStyle = .wheels
        date.locale = Locale(identifier: "ru_Ru")
        self.view.addSubview(date)
        date.translatesAutoresizingMaskIntoConstraints = false
        date.topAnchor.constraint(equalTo: sampleTextField.bottomAnchor, constant: 40).isActive = true
        date.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        chooseTime = date
        
       
    }
    
    func newTasks() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let time = formatter.string(from: chooseTime.date)
        newTask = Task(toDo: newTaskTextfield.text!, time: time)
    }
   
    

}
