//
//  MainPageRecomendationCell.swift
//  OLX1
//
//  Created by Abdulvoxid on 02/04/24.
//

import UIKit

final class MainPageRecomendationCell : UICollectionViewCell {
    
    let imageView = UIImageView()
    let likeButton = UIButton()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    //let titleLable = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 10, width: (UIScreen.main.bounds.width - 52) / 2, height: 117)
        imageView.layer.cornerRadius = 10
        imageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

        contentView.addSubview(likeButton)
        likeButton.tintColor = .black
        likeButton.frame = CGRect(x: 140, y: 137, width: 23, height: 20)
        likeButton.setImage(UIImage(systemName: "suit.heart"), for: .normal)
        likeButton.setImage(UIImage(systemName: "suit.heart.fill"), for: .selected)
        likeButton.addTarget(self, action: #selector(likeButtonPressed), for: .touchUpInside)
        
        contentView.addSubview(label1)
        label1.frame = CGRect(x: 11, y: 132, width: 127, height: 35)
        label1.text = "Сантехнические работы"
        label1.textColor = .rgb(0, 0, 0)
        label1.font = .systemFont(ofSize: 12)
        label1.numberOfLines = 2
    
        contentView.addSubview(label2)
        label2.frame = CGRect(x: 11, y: 170, width: 135, height: 13)
        label2.text = "Ташкент. Сегодня 11:43"
        label2.textColor = .rgb(89, 89, 89)
        label2.font = .systemFont(ofSize: 10)
        
        contentView.addSubview(label3)
        label3.frame = CGRect(x: 11, y: 190, width: 135, height: 18)
        label3.text = "от 100 000 сум"
        label3.font = UIFont.boldSystemFont(ofSize: 16)
        label3.textColor = .rgb(0, 0, 0)
      
    }
    
    @objc func likeButtonPressed() {
        likeButton.isSelected.toggle()
        if likeButton.isSelected == true {
            likeButton.tintColor = .red
        } else {
            likeButton.tintColor = .black
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

