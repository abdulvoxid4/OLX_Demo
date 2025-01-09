//
//  MainPageCategoryAboveView.swift
//  OLX1
//
//  Created by Abdulvoxid on 05/04/24.
//


import UIKit

final class MainPageCategoryAboveView : UIView {
    
    let imageView = UIImageView()
    let titleLable = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        contentView.addSubview(titleLable)
        
        imageView.frame = CGRect(x: 0, y: 20, width: 82, height: 82)
        titleLable.frame = CGRect(x: 0, y: 104, width: 82, height: 30)
        titleLable.numberOfLines = 0
        titleLable.textAlignment = .center
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


