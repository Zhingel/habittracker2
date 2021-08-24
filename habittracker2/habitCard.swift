//
//  habitCard.swift
//  habittracker2
//
//  Created by Стас Жингель on 23.08.2021.
//

import UIKit

class habitCard: UICollectionViewCell {
    weak var titleLabel: UILabel!
    weak var scoreLabel: UILabel!
    weak var checkButton: UIButton!
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(title)
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        titleLabel = title
        titleLabel.font = titleLabel.font.withSize(30)
        let score = UILabel()
        score.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(score)
        score.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        score.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        scoreLabel = score
        scoreLabel.font = scoreLabel.font.withSize(12)
        scoreLabel.alpha = 0.5
        let check = UIButton()
        check.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(check)
        check.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40).isActive = true
        check.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        checkButton = check
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
