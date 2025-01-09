//
//  MainPageCategoryView.swift
//  OLX1
//
//  Created by Abdulvoxid on 02/04/24.
//

import UIKit

final class MainPageCategoryView : UIViewController {
    
    private let categoryLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
}

extension MainPageCategoryView {
    
    func setcategoryLabel() {
        view.addSubview(categoryLabel)
        categoryLabel.text = "Категории"
        categoryLabel.textColor = .rgb(0, 0, 0)
        categoryLabel.font = .systemFont(ofSize: 12)
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.topAnchor.constraint(equalTo: text.bo).isActive = true
        
    }
}
