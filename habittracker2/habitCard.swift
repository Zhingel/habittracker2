//
//  habitCard.swift
//  habittracker2
//
//  Created by Стас Жингель on 23.08.2021.
//

import UIKit

class habitCard: UICollectionViewCell {
    weak var titleLabel: UILabel!
    weak var timeLabel: UILabel!
    weak var checkButton: UIButton!
    weak var scoreLabel: UILabel!
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(title)
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        titleLabel = title
        titleLabel.font = titleLabel.font.withSize(25)
        
        let time = UILabel()
        time.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(time)
        time.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 3).isActive = true
        time.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        timeLabel = time
        timeLabel.font = timeLabel.font.withSize(12)
        timeLabel.alpha = 0.5
        
        let check = UIButton()
        check.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(check)
        check.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40).isActive = true
        check.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        checkButton = check
        
        let score = UILabel()
        contentView.addSubview(score)
        score.translatesAutoresizingMaskIntoConstraints = false
        score.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        score.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        scoreLabel = score
        scoreLabel.font = scoreLabel.font.withSize(14)
        scoreLabel.alpha = 0.65
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
