//
//  ViewController.swift
//  habittracker2
//
//  Created by Стас Жингель on 23.08.2021.
//

import UIKit

class ViewController: UIViewController {
    var tasks: [Task] = [Task(toDo: "first task", time: "00:00")]
    weak var collectionView : UICollectionView!
    
    override func loadView() {
        super.loadView()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        self.collectionView = collectionView
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .gray
        collectionView.register(habitCard.self, forCellWithReuseIdentifier: "card")
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let newHabbit = unwindSegue.source as! NewHabbit
        newHabbit.newTasks()
        tasks.append(newHabbit.newTask)
        collectionView.reloadData()
    }

    
    
}


extension ViewController: UICollectionViewDelegate {

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "card", for: indexPath) as! habitCard
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 20
        cell.titleLabel.text = tasks[indexPath.row].toDo
        cell.timeLabel.text = "Каждый день в \(tasks[indexPath.row].time)"
        cell.scoreLabel.text = "Score: \(tasks[indexPath.row].score)"
        cell.checkButton.setImage(UIImage(systemName: "checkmark.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30)), for: .normal)
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width - 30, height: 140)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    }
}
